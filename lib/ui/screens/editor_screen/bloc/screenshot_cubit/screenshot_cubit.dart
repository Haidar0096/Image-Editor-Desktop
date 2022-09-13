// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:convert';
import 'dart:ui' as ui;

import 'package:async/async.dart';
import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:photo_editor/extensions/string_extension.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/services/editor/editor.dart';
import 'package:photo_editor/services/file_picker/file_picker.dart';
import 'package:photo_editor/services/image_editor/image_editor.dart';
import 'package:photo_editor/services/image_editor/image_editor_exception.dart';
import 'package:photo_editor/services/screenshot_service/screenshot_service.dart';
import 'package:photo_editor/ui/common/error/invalid_state_error.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'screenshot_cubit_editor_models.dart';

part 'screenshot_state.dart';

part 'screenshot_cubit.freezed.dart';

@Injectable()
class ScreenshotCubit extends Cubit<ScreenshotState> {
  final ScreenshotService _screenshotService;

  final FilePicker _filePicker;

  final Logger _logger;

  final ImageEditor _imageEditor;

  late CancelableCompleter<Either<String, void>> _captureWidgetCompleter;

  /// A list containing objects of type [VariableTextData] which are pairs of element id for a variable text element
  /// and the content of the text file that this variable text element is pointing to.
  /// It is used to cache the content of the text files that are used by the variable text elements.
  @visibleForTesting
  UnmodifiableListView<VariableTextData> variableTextsData = UnmodifiableListView([]);

  /// The allowed sizes for the generated image files, in dips.
  static const List<Size> allowedOutputImageSizes = [
    Size(1920, 1080),
    Size(1366, 768),
    Size(1024, 768),
    Size(800, 600),
  ];

  /// The minimum and maximum resolutions for the generated image files, in %.
  static const int minimumOutputImageResolution = 10;
  static const int maximumOutputImageResolution = 100;

  /// Pixel ratio used when capturing the widget, higher value means more time to process but better image quality.
  static const double outputImagePixelRatio = 3.5;

  @override
  void onChange(Change<ScreenshotState> change) {
    super.onChange(change);
    _logger.d(
      'Screenshot Cubit: state is changing \nfrom:\n${change.currentState}\nto:\n${change.nextState}\n',
    );
  }

  ScreenshotCubit(this._screenshotService, this._filePicker, this._logger, this._imageEditor)
      : super(ScreenshotState.initial());

  Future<void> setOutputImageDirectory() async => _filePicker
      .pickPath(initialDirectory: state.outputImageDirectory.fold(() => '/', (dir) => dir.path))
      .then((dir) => emit(state.copyWith(outputImageDirectory: dir)));

  void setFileNamingType(FileNamingType fileNamingType) => emit(state.copyWith(fileNamingType: fileNamingType));

  void setBaseFileName(String baseFileName) => emit(state.copyWith(baseFileName: some(baseFileName)));

  void setImageFileExtension(ImageFormat imageFormat) => emit(state.copyWith(outputImageFormat: imageFormat));

  void setOutputImageSize(Size size) => emit(state.copyWith(outputImageSize: size));

  void setOutputImageQuality(int quality) => emit(state.copyWith(outputImageQuality: quality));

  GenerateImageSettingsValidationResult validateGenerateImageSettings() {
    if (state.outputImageDirectory.isNone()) {
      return GenerateImageSettingsValidationResult.directoryMustBeSet;
    }
    if (state.baseFileName.isNone() && state.fileNamingType == FileNamingType.namePlusNumber) {
      return GenerateImageSettingsValidationResult.baseFileNameMustBeSet;
    }
    if (state.fileNamingType == FileNamingType.namePlusNumber &&
        !state.baseFileName.getOrElse(() => '').isAlphaNumericUnderScore()) {
      return GenerateImageSettingsValidationResult.baseFileNameMustBeAlphaNumeric;
    }
    return GenerateImageSettingsValidationResult.valid;
  }

  /// Generates the images according to the provided settings and the settings from the cubit state.
  /// The settings in the cubit state should be validated before calling this method.
  ///
  /// Returns an [Either] that is [Left] if an error occurred or [Right] if the images were generated successfully.
  Future<Either<String, void>> captureWidget({
    required BuildContext context,
    required List<editor.Element> elements,
    required Size canvasSize,
    required Option<Color> canvasBackgroundColor,
    required Option<File> canvasBackgroundImageFile,
  }) async {
    if (state.processingState != ProcessingState.idle) {
      throw const InvalidStateError(message: 'captureWidget called when processing state was not idle');
    }

    if (validateGenerateImageSettings() != GenerateImageSettingsValidationResult.valid) {
      throw const InvalidStateError(message: 'captureWidget called with invalid generate image settings');
    }

    emit(state.copyWith(processingState: ProcessingState.processStart));

    _captureWidgetCompleter = CancelableCompleter();
    Future.delayed(
      Duration.zero,
      () => _captureWidget(
        context: context,
        elements: elements,
        canvasSize: canvasSize,
        canvasBackgroundColor: canvasBackgroundColor,
        canvasBackgroundImageFile: canvasBackgroundImageFile,
      ),
    );
    return _captureWidgetCompleter.operation.value;
  }

  Future<void> _captureWidget({
    required BuildContext context,
    required List<editor.Element> elements,
    required Size canvasSize,
    required Option<Color> canvasBackgroundColor,
    required Option<File> canvasBackgroundImageFile,
  }) async {
    late final Either<String, void> completerResult;

    if (_isCancelledOrCompleted) return;
    // make sure all variable text elements have source files
    if (_someVariableTextElementsHaveNoSourceFile(elements)) {
      emit(state.copyWith(processingState: ProcessingState.idle));
      _captureWidgetCompleter.complete(left(AppLocalizations.of(context)!.someTextsHaveNoSourceFile));
      return;
    }
    try {
      // read all variable text elements' files and save them to the cache
      emit(state.copyWith(processingState: ProcessingState.readingData));
      variableTextsData = UnmodifiableListView(await _readVariableTextFiles(elements));

      if (_isCancelledOrCompleted) return;
      // make sure all variable text files have same number of lines
      late final bool haveSameLinesCount;
      emit(state.copyWith(processingState: ProcessingState.validatingReadData));
      haveSameLinesCount = await _allVariableTextElementsHaveSameLinesCount(variableTextsData);

      if (_isCancelledOrCompleted) return;
      if (!(haveSameLinesCount)) {
        emit(state.copyWith(processingState: ProcessingState.idle));
        _captureWidgetCompleter.complete(left(AppLocalizations.of(context)!.someTextsHaveDifferentLineCount));
      }

      // generate the images
      List<Uint8List> imagesData = [];
      final String imageString = AppLocalizations.of(context)!.image;
      final String ofString = AppLocalizations.of(context)!.ofString;
      if (variableTextsData.isEmpty) {
        // no variable texts, generate only one image
        emit(state.copyWith(
            processingState: ProcessingState.capturing, progressMessage: some('$imageString 1 $ofString 1')));
        final Widget widget = EditorScreenshotModelWidget(
          elements: elements,
          theme: Theme.of(context),
          canvasSize: canvasSize,
          backgroundColor: canvasBackgroundColor,
          backgroundImageFile: canvasBackgroundImageFile,
        );
        final Uint8List capturedImageData = await _screenshotService.captureWidget(
          widget: widget,
          context: context,
          window: ui.window,
          outputImagePixelRatio: outputImagePixelRatio,
          outputImageSize: canvasSize,
          delay: const Duration(milliseconds: 1000),
        );
        imagesData.add(capturedImageData);
      } else {
        // there are variable texts, for each line, substitute all variable texts with their value at that line,
        // and generate one image
        int linesCount = variableTextsData.first.data.length;
        for (int line = 0; line < linesCount; line++) {
          if (_isCancelledOrCompleted) return;
          emit(state.copyWith(
              processingState: ProcessingState.capturing,
              progressMessage: some('$imageString ${line + 1} $ofString $linesCount')));
          final Widget widget = EditorScreenshotModelWidget(
            elements: elements.map((element) {
              if (!element.properties.isVariableTextProperties) {
                return element;
              } else {
                // get the `VariableTextData` associated with this element
                final VariableTextData variableTextData =
                    variableTextsData.firstWhere((td) => td.elementId == element.id);
                // get this element's `VariableTextProperties`
                final editor.VariableTextProperties props = element.properties as editor.VariableTextProperties;
                // return the element with updated `VariableTextProperties`
                return element.copyWith(properties: props.copyWith(placeHolderText: variableTextData.data[line]));
              }
            }).toList(),
            theme: Theme.of(context),
            canvasSize: canvasSize,
            backgroundColor: canvasBackgroundColor,
            backgroundImageFile: canvasBackgroundImageFile,
          );
          final data = await _screenshotService.captureWidget(
            widget: widget,
            context: context,
            window: ui.window,
            outputImagePixelRatio: outputImagePixelRatio,
            outputImageSize: canvasSize,
            delay: const Duration(milliseconds: 1000),
          );
          imagesData.add(data);
        }
      }

      for (int i = 0; i < imagesData.length; i++) {
        late Uint8List processedImageData;

        if (_isCancelledOrCompleted) return;
        // resize the image
        final String imageString = AppLocalizations.of(context)!.image;
        final String ofString = AppLocalizations.of(context)!.ofString;
        emit(state.copyWith(
            processingState: ProcessingState.resizing,
            progressMessage: some('$imageString ${i + 1} $ofString ${imagesData.length}')));
        processedImageData = await _imageEditor.copyResize(
          imageData: imagesData[i],
          outputFormat: state.outputImageFormat,
          width: state.outputImageSize.width.ceilToDouble().toInt(),
          height: state.outputImageSize.height.ceilToDouble().toInt(),
          quality: state.outputImageQuality,
        );

        // write the image to a file
        if (_isCancelledOrCompleted) return;
        emit(state.copyWith(processingState: ProcessingState.savingData));
        await _imageEditor.saveImage(
          imageData: processedImageData,
          outputFormat: state.outputImageFormat,
          path: state.outputImageDirectory.toNullable()!.path,
          name: _getFileName(i),
        );
      }

      // finally complete the future
      completerResult = right(null);
    } on ImageEditorException catch (e) {
      _logger.e('An error has occurred in captureWidget', e);
      completerResult = left(AppLocalizations.of(context)!.errorHasOccurred);
    }

    if (_isCancelledOrCompleted) return;
    // clear the progress message, and idle the state of the cubit
    emit(state.copyWith(processingState: ProcessingState.idle, progressMessage: none()));
    _captureWidgetCompleter.complete(completerResult);
  }

  /// Cancels the execution of the process of capturing the widget. Takes effect starting from the next step of the process.
  void cancelCaptureWidget(BuildContext context) {
    emit(state.copyWith(processingState: ProcessingState.idle, progressMessage: none()));
    _captureWidgetCompleter.complete(left(AppLocalizations.of(context)!.operationCanceled));
  }

  bool get _isCancelledOrCompleted => _captureWidgetCompleter.isCanceled || _captureWidgetCompleter.isCompleted;

  Future<List<VariableTextData>> _readVariableTextFiles(List<editor.Element> elements) async {
    List<VariableTextData> variableTextsData = [];
    const LineSplitter splitter = LineSplitter();
    for (var element in elements) {
      if (element.properties.isVariableTextProperties) {
        var props = element.properties as editor.VariableTextProperties;
        var sourceFilePath = props.sourceFilePath.toNullable()!;
        String contents = await File(sourceFilePath).readAsString();
        variableTextsData.add(VariableTextData(elementId: element.id, data: splitter.convert(contents)));
      }
    }
    return variableTextsData;
  }

  bool _someVariableTextElementsHaveNoSourceFile(List<editor.Element> elements) {
    for (var element in elements) {
      if (element.properties.isVariableTextProperties) {
        var props = element.properties as editor.VariableTextProperties;
        if (props.sourceFilePath.isNone()) {
          return true;
        }
      }
    }
    return false;
  }

  Future<bool> _allVariableTextElementsHaveSameLinesCount(List<VariableTextData> variableTextsData) async {
    if (variableTextsData.isEmpty) {
      return true;
    }
    int firstVariableTextLinesCount = variableTextsData.first.data.length;
    for (int i = 1; i < variableTextsData.length; i++) {
      int contentsLines = variableTextsData[i].data.length;
      if (contentsLines != firstVariableTextLinesCount) {
        return false;
      }
    }
    return true;
  }

  String _getFileName(int index) {
    switch (state.fileNamingType) {
      case FileNamingType.number:
        return index.toString();
      case FileNamingType.namePlusNumber:
        return '${state.baseFileName.toNullable()!}_$index';
      case FileNamingType.date:
      default:
        return DateTime.now().toIso8601String();
    }
  }
}

/// A class that holds the source file data of a variable text element.
class VariableTextData {
  final ElementId elementId;
  final List<String> data;

  VariableTextData({
    required this.elementId,
    required this.data,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VariableTextData &&
          runtimeType == other.runtimeType &&
          elementId == other.elementId &&
          data.equals(other.data);

  @override
  int get hashCode => elementId.hashCode ^ data.hashCode;
}

/// The method to name the generated files.
enum FileNamingType {
  date,
  number,
  namePlusNumber,
}

/// The allowed extensions for the generated image files.
enum AllowedOutputImageFileExtension {
  png,
  jpeg,
}

/// The current state of the image generation process.
enum ProcessingState {
  /// The cubit is ready to process new data.
  idle,

  /// The cubit has started processing the data.
  processStart,

  /// The cubit is currently reading the input data such as the variable text files.
  readingData,

  /// The cubit is currently validating the read data.
  validatingReadData,

  /// The cubit is currently capturing an image.
  capturing,

  /// The cubit is currently resizing an image.
  resizing,

  /// The cubit is currently saving the generated images to files.
  savingData,
}

extension ProcessingStateExtension on ProcessingState {
  /// Returns the appropriate Message according to the current [ProcessingState].
  String getMessage(BuildContext context) {
    switch (this) {
      case ProcessingState.idle:
        return AppLocalizations.of(context)!.idle;
      case ProcessingState.processStart:
        return AppLocalizations.of(context)!.processStart;
      case ProcessingState.readingData:
        return AppLocalizations.of(context)!.readingData;
      case ProcessingState.validatingReadData:
        return AppLocalizations.of(context)!.validatingReadData;
      case ProcessingState.capturing:
        return AppLocalizations.of(context)!.capturing;
      case ProcessingState.resizing:
        return AppLocalizations.of(context)!.resizing;
      case ProcessingState.savingData:
        return AppLocalizations.of(context)!.savingData;
    }
  }
}

/// Represent the result of validation of the generate image settings.
enum GenerateImageSettingsValidationResult {
  valid,
  directoryMustBeSet,
  baseFileNameMustBeSet,
  baseFileNameMustBeAlphaNumeric,
}

extension GenerateImageSettingsValidationResultExtension on GenerateImageSettingsValidationResult {
  /// Returns the appropriate Message according to the current [GenerateImageSettingsValidationResult].
  String getMessage(BuildContext context) {
    switch (this) {
      case GenerateImageSettingsValidationResult.valid:
        return AppLocalizations.of(context)!.valid;
      case GenerateImageSettingsValidationResult.directoryMustBeSet:
        return AppLocalizations.of(context)!.directoryMustBeSet;
      case GenerateImageSettingsValidationResult.baseFileNameMustBeSet:
        return AppLocalizations.of(context)!.baseFileNameMustBeSet;
      case GenerateImageSettingsValidationResult.baseFileNameMustBeAlphaNumeric:
        return AppLocalizations.of(context)!.baseFileNameMustBeAlphaNumeric;
    }
  }
}

/////////////////// start at 23:56:55
/////////////////// end at 12:11:45
/////////////////// total 16 min and 40 secs
