import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/services/file_picker/file_picker.dart';
import 'package:photo_editor/services/screenshot_service/screenshot_service.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/screenshot_model_widgets/editor_screenshot_model_widget.dart';

part 'screenshot_cubit.freezed.dart';

part 'screenshot_state.dart';

@Injectable()
class ScreenshotCubit extends Cubit<ScreenshotState> {
  final ScreenshotService _screenshotService;

  final FilePicker _filePicker;

  final Logger _logger;

  ScreenshotCubit(this._filePicker, this._screenshotService, this._logger) : super(ScreenshotState.initial());

  Future<void> captureWidget({required List<editor.Element> elements, required BuildContext context}) async {
    emit(state.copyWith(isProcessing: true));

    // choose storage location
    await (await _filePicker.pickPath()).fold(() {
      // no path was chosen
    }, (dir) async {
      // a path was chosen
      try {
        // get the variable text elements
        List<editor.ElementType> variableTextElementTypes = [];
        for (var element in elements) {
          if (element.elementType is editor.VariableTextElementType) {
            variableTextElementTypes.add(element.elementType);
          }
        }

        if (variableTextElementTypes.isEmpty) {
          // there are no variable elements, just do one capture
          final File file = File(
              '${dir.path}${Platform.pathSeparator}editor${DateTime.now().hour}_${DateTime.now().minute}_${DateTime.now().second}.png');
          await _screenshotService.captureWidget(
            context: context,
            widget: EditorScreenshotModelWidget(
              theme: Theme.of(context),
              elements: elements,
            ),
            outputFilePath: file.path,
          );
        } else {
          // there are variable elements
          // read the files
          Map<String, List<String>> filesData = {};

          for (int i = 0; i < variableTextElementTypes.length; i++) {
            final elementType = variableTextElementTypes[i] as editor.VariableTextElementType;
            filesData[elementType.sourceFilePath] = File(elementType.sourceFilePath).readAsLinesSync();
          }

          // take a screenshot for each line in the files
          // (all indexes in files are treated as parallel)
          for (int i = 0; i < filesData.values.first.length; i++) {
            final File file = File(
                '${dir.path}${Platform.pathSeparator}${i}_editor_${DateTime.now().hour}_${DateTime.now().minute}_${DateTime.now().second}.png');
            // substitute the variable texts with their corresponding values
            List<editor.Element> currentSubstitutedElements = elements.map(
              (element) {
                if (element.elementType is editor.VariableTextElementType) {
                  final variableTextElementType = element.elementType as editor.VariableTextElementType;
                  return element.copyWith(
                    elementType: (element.elementType as editor.VariableTextElementType).copyWith(
                      placeHolderText: filesData[variableTextElementType.sourceFilePath]![i],
                    ),
                  );
                } else {
                  return element;
                }
              },
            ).toList();
            await _screenshotService.captureWidget(
              context: context,
              widget: EditorScreenshotModelWidget(
                theme: Theme.of(context),
                elements: currentSubstitutedElements,
              ),
              outputFilePath: file.path,
            );
          }
        }
      } on Exception catch (e) {
        _logger.e(e);
      }
    });
    emit(state.copyWith(isProcessing: false));
  }

  @override
  void onChange(Change<ScreenshotState> change) {
    super.onChange(change);
    _logger.d(
      'Screenshot Cubit: state is changing \nfrom:\n${change.currentState}\nto:\n${change.nextState}\n',
    );
  }
}
