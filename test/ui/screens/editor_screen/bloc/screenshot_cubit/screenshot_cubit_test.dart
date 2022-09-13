import 'dart:collection';
import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:photo_editor/services/file_picker/file_picker.dart';
import 'package:photo_editor/services/image_editor/image_editor.dart';
import 'package:photo_editor/services/image_editor/image_editor_exception.dart';
import 'package:photo_editor/services/screenshot_service/screenshot_service.dart';
import 'package:photo_editor/ui/common/error/invalid_state_error.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/screenshot_cubit/screenshot_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;

import 'screenshot_cubit_test.mocks.dart';

part 'screenshot_cubit_test_constants.dart';

@GenerateMocks(
  [
    Logger,
    FilePicker,
    ScreenshotService,
    ImageEditor,
  ],
)
void main() {
  void createDirectoryIfNotExistsRecursive(Directory outputDirectory) {
    if (!outputDirectory.existsSync()) {
      outputDirectory.createSync(recursive: true);
    }
  }

  ScreenshotCubit createScreenshotCubit({
    ScreenshotService? screenshotService,
    FilePicker? filePicker,
    Logger? logger,
    ImageEditor? imageEditor,
  }) =>
      ScreenshotCubit(
        screenshotService ?? MockScreenshotService(),
        filePicker ?? MockFilePicker(),
        logger ?? MockLogger(),
        imageEditor ?? MockImageEditor(),
      );

  ScreenshotState createScreenshotState({
    ProcessingState? processingState,
    Option<String>? progressMessage,
    Option<Directory>? outputImageDirectory,
    FileNamingType? fileNamingType,
    Option<String>? baseFileName,
    ImageFormat? outputImageFormat,
    Size? size,
    int? outputImageQuality,
  }) =>
      ScreenshotState(
        processingState: processingState ?? ProcessingState.idle,
        progressMessage: progressMessage ?? none(),
        outputImageDirectory: outputImageDirectory ?? none(),
        fileNamingType: fileNamingType ?? FileNamingType.number,
        baseFileName: baseFileName ?? none(),
        outputImageFormat: outputImageFormat ?? ImageFormat.png,
        outputImageSize: size ?? const Size(1366, 768),
        outputImageQuality: outputImageQuality ?? ScreenshotCubit.maximumOutputImageResolution,
      );

  group('initialization tests', () {
    test('Static constants are correct.', () {
      expect(
        ScreenshotCubit.allowedOutputImageSizes,
        [
          const Size(1920, 1080),
          const Size(1366, 768),
          const Size(1024, 768),
          const Size(800, 600),
        ],
      );

      expect(ScreenshotCubit.minimumOutputImageResolution, 10);
      expect(ScreenshotCubit.maximumOutputImageResolution, 100);

      expect(ScreenshotCubit.outputImagePixelRatio, 3.5);
    });

    test('Initial state is correct.', () {
      ScreenshotCubit cubit = createScreenshotCubit();
      expect(
        cubit.state,
        ScreenshotState(
          processingState: ProcessingState.idle,
          progressMessage: none(),
          outputImageDirectory: none(),
          fileNamingType: FileNamingType.number,
          baseFileName: none(),
          outputImageFormat: ImageFormat.png,
          outputImageSize: const Size(1366, 768),
          outputImageQuality: ScreenshotCubit.maximumOutputImageResolution,
        ),
      );
    });

    blocTest(
      'Emits no states when created.',
      build: () => createScreenshotCubit(),
      expect: () => [],
    );
  });

  group('setDirectory', () {
    // create the mocks used in tests
    late MockFilePicker mockFilePicker;

    // create the data used in tests
    final Directory directory = Directory('/abc');

    blocTest<ScreenshotCubit, ScreenshotState>(
      'Should set the directory correctly when a directory is chosen.',
      setUp: () {
        mockFilePicker = MockFilePicker();
        when(
          mockFilePicker.pickPath(
            initialDirectory: captureThat(equals('/'), named: 'initialDirectory'),
          ),
        ).thenAnswer((_) async => some(directory));
      },
      build: () => createScreenshotCubit(filePicker: mockFilePicker),
      act: (cubit) => cubit.setOutputImageDirectory(),
      expect: () => [createScreenshotState(outputImageDirectory: some(directory))],
    );
    blocTest<ScreenshotCubit, ScreenshotState>(
      'Should set the directory correctly when no directory is chosen.',
      seed: () => createScreenshotState(outputImageDirectory: some(Directory('/'))),
      setUp: () {
        mockFilePicker = MockFilePicker();
        when(
          mockFilePicker.pickPath(
            initialDirectory: captureThat(equals('/'), named: 'initialDirectory'),
          ),
        ).thenAnswer((_) async => none());
      },
      build: () => createScreenshotCubit(filePicker: mockFilePicker),
      act: (cubit) => cubit.setOutputImageDirectory(),
      expect: () => [createScreenshotState(outputImageDirectory: none())],
    );
    blocTest<ScreenshotCubit, ScreenshotState>(
      'Should set the initial directory correctly when there is one.',
      seed: () => createScreenshotState(outputImageDirectory: some(Directory('/Desktop'))),
      setUp: () {
        mockFilePicker = MockFilePicker();
        when(
          mockFilePicker.pickPath(
            initialDirectory: captureThat(equals('/Desktop'), named: 'initialDirectory'),
          ),
        ).thenAnswer((_) async => some(directory));
      },
      build: () => createScreenshotCubit(filePicker: mockFilePicker),
      act: (cubit) => cubit.setOutputImageDirectory(),
      expect: () => [createScreenshotState(outputImageDirectory: some(directory))],
    );
  });

  group('setFileNamingType', () {
    blocTest<ScreenshotCubit, ScreenshotState>(
      'Should set the file naming type correctly.',
      seed: () => createScreenshotState(fileNamingType: FileNamingType.number),
      build: () => createScreenshotCubit(),
      act: (cubit) => cubit.setFileNamingType(FileNamingType.date),
      expect: () => [createScreenshotState(fileNamingType: FileNamingType.date)],
    );
  });

  group('setBaseFileName', () {
    blocTest<ScreenshotCubit, ScreenshotState>(
      'Should set the base file name correctly.',
      seed: () => createScreenshotState(baseFileName: some('abc')),
      build: () => createScreenshotCubit(),
      act: (cubit) => cubit.setBaseFileName('def'),
      expect: () => [createScreenshotState(baseFileName: some('def'))],
    );
  });

  group('setImageFileExtension', () {
    blocTest<ScreenshotCubit, ScreenshotState>(
      'Should set the image file extension correctly.',
      seed: () => createScreenshotState(outputImageFormat: ImageFormat.png),
      build: () => createScreenshotCubit(),
      act: (cubit) => cubit.setImageFileExtension(ImageFormat.jpeg),
      expect: () => [createScreenshotState(outputImageFormat: ImageFormat.jpeg)],
    );
  });

  group('setOutputImageSize', () {
    blocTest<ScreenshotCubit, ScreenshotState>(
      'should set the output image size correctly.',
      seed: () => createScreenshotState(size: const Size(1366, 768)),
      build: () => createScreenshotCubit(),
      act: (cubit) => cubit.setOutputImageSize(const Size(800, 600)),
      expect: () => [createScreenshotState(size: const Size(800, 600))],
    );
  });

  group('setOutputImageQuality', () {
    blocTest<ScreenshotCubit, ScreenshotState>(
      'Should set the output image quality correctly.',
      seed: () => createScreenshotState(outputImageQuality: 100),
      build: () => createScreenshotCubit(),
      act: (cubit) => cubit.setOutputImageQuality(50),
      expect: () => [createScreenshotState(outputImageQuality: 50)],
    );
  });

  group('validateGenerateImageSettings', () {
    late MockFilePicker mockFilePicker;
    final Directory directory = Directory('/abc');

    test('Should return the appropriate result when directory is not set', () async {
      mockFilePicker = MockFilePicker();
      when(
        mockFilePicker.pickPath(
          initialDirectory: captureThat(equals('/'), named: 'initialDirectory'),
        ),
      ).thenAnswer((_) async => none());
      final ScreenshotCubit cubit = createScreenshotCubit(filePicker: mockFilePicker);
      await cubit.setOutputImageDirectory();
      final result = cubit.validateGenerateImageSettings();
      expect(result, GenerateImageSettingsValidationResult.directoryMustBeSet);
    });

    test('Should return the appropriate result when naming type is namePlusNumber and baseFileName is not set',
        () async {
      mockFilePicker = MockFilePicker();

      when(
        mockFilePicker.pickPath(
          initialDirectory: captureThat(equals('/'), named: 'initialDirectory'),
        ),
      ).thenAnswer((_) async => some(directory));

      final ScreenshotCubit cubit = createScreenshotCubit(filePicker: mockFilePicker);

      await cubit.setOutputImageDirectory();
      cubit.setFileNamingType(FileNamingType.namePlusNumber);
      final result = cubit.validateGenerateImageSettings();
      expect(result, GenerateImageSettingsValidationResult.baseFileNameMustBeSet);
    });

    test('Should return the appropriate result when naming type is namePlusNumber and baseFileName is not valid',
        () async {
      mockFilePicker = MockFilePicker();

      when(
        mockFilePicker.pickPath(
          initialDirectory: captureThat(equals('/'), named: 'initialDirectory'),
        ),
      ).thenAnswer((_) async => some(directory));

      final ScreenshotCubit cubit = createScreenshotCubit(filePicker: mockFilePicker);

      await cubit.setOutputImageDirectory();
      cubit.setFileNamingType(FileNamingType.namePlusNumber);
      final results = <GenerateImageSettingsValidationResult>[];
      cubit.setBaseFileName('');
      results.add(cubit.validateGenerateImageSettings());
      cubit.setBaseFileName('.123');
      results.add(cubit.validateGenerateImageSettings());
      expect(
        results,
        [
          GenerateImageSettingsValidationResult.baseFileNameMustBeAlphaNumeric,
          GenerateImageSettingsValidationResult.baseFileNameMustBeAlphaNumeric,
        ],
      );
    });

    test('Should return the appropriate result when naming type is namePlusNumber and baseFileName is valid', () async {
      mockFilePicker = MockFilePicker();

      when(
        mockFilePicker.pickPath(
          initialDirectory: captureThat(equals('/'), named: 'initialDirectory'),
        ),
      ).thenAnswer((_) async => some(directory));

      final ScreenshotCubit cubit = createScreenshotCubit(filePicker: mockFilePicker);

      await cubit.setOutputImageDirectory();
      cubit.setFileNamingType(FileNamingType.namePlusNumber);
      cubit.setBaseFileName('hello_world');
      final result = cubit.validateGenerateImageSettings();
      expect(result, GenerateImageSettingsValidationResult.valid);
    });
  });

  group('captureWidget', () {
    // variables used in multiple tests
    const Duration timeoutDuration = Duration(seconds: 1);
    final editor.Element variableTextNoSourceFile = editor.Element(
      id: '1',
      showOrder: 1,
      rect: const Rect.fromLTWH(0, 0, 100, 100),
      properties: editor.VariableTextProperties(placeHolderText: '', sourceFilePath: none()),
    );
    final editor.Element namesVariableText = editor.Element(
      id: '1',
      showOrder: 1,
      rect: const Rect.fromLTWH(0, 0, 100, 100),
      properties: editor.VariableTextProperties(
        placeHolderText: '',
        sourceFilePath: some('test_resources/screenshot_cubit_test_resources/names.txt'),
      ),
    );
    final editor.Element idsVariableText = editor.Element(
      id: '2',
      showOrder: 2,
      rect: const Rect.fromLTWH(0, 0, 100, 100),
      properties: editor.VariableTextProperties(
        placeHolderText: '',
        sourceFilePath: some('test_resources/screenshot_cubit_test_resources/ids_long.txt'),
      ),
    );
    const editor.Element staticText = editor.Element(
      id: '1',
      showOrder: 1,
      rect: Rect.fromLTWH(339, 15.5, 598.40, 37.40),
      properties: editor.StaticTextProperties(
        text: 'Type the text here (Double tap to start):',
        textStyle: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'AbrilFatFace'),
      ),
    );

    editor.Element namesShortVariableText = editor.Element(
      id: '2',
      showOrder: 2,
      rect: const Rect.fromLTWH(491, 50, 598.40, 37.40),
      properties: editor.VariableTextProperties(
        placeHolderText: 'Generated Text appears here',
        sourceFilePath: some('test_resources/screenshot_cubit_test_resources/names_short.txt'),
        textStyle: const TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'AbrilFatFace'),
      ),
    );

    testWidgets('Should throw an exception if called multiple times simultaneously.', (tester) async {
      InvalidStateError? expectedError;

      final Directory outputDirectory = Directory('test_resources/screenshot_cubit_test_resources/one_generated_image');

      createDirectoryIfNotExistsRecursive(outputDirectory);

      final MockFilePicker mockFilePicker = MockFilePicker();
      when(
        mockFilePicker.pickPath(
          initialDirectory: captureThat(equals('/'), named: 'initialDirectory'),
        ),
      ).thenAnswer((_) async => some(outputDirectory));

      final ScreenshotCubit cubit =
          createScreenshotCubit(filePicker: mockFilePicker, screenshotService: ScreenshotService());

      await cubit.setOutputImageDirectory();
      cubit.setBaseFileName('nice');
      cubit.setFileNamingType(FileNamingType.namePlusNumber);
      cubit.setImageFileExtension(ImageFormat.jpeg);
      cubit.setOutputImageSize(const Size(800, 600));
      cubit.setOutputImageQuality(10);
      await tester.pumpAndSettle();

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      await tester.runAsync(() async {
        try {
          cubit.captureWidget(
            context: context,
            elements: [],
            canvasSize: const Size(100, 100),
            canvasBackgroundColor: some(Colors.red),
            canvasBackgroundImageFile: some(File('')),
          );
          await cubit.captureWidget(
            context: context,
            elements: [],
            canvasSize: Size.zero,
            canvasBackgroundColor: some(Colors.red),
            canvasBackgroundImageFile: some(File('')),
          );
        } on InvalidStateError catch (e) {
          expectedError = e;
        }
      });
      await tester.pumpAndSettle();
      expect(
        expectedError,
        const InvalidStateError(message: 'captureWidget called when processing state was not idle'),
      );
    });

    testWidgets('Should throw an exception if called with invalid generate image settings.', (tester) async {
      InvalidStateError? expectedError;

      final ScreenshotCubit cubit = createScreenshotCubit(); // settings are invalid initially since no directory is set
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(MaterialApp));

      await tester.runAsync(() async {
        try {
          await cubit
              .captureWidget(
                context: context,
                elements: [],
                canvasSize: Size.zero,
                canvasBackgroundColor: some(Colors.red),
                canvasBackgroundImageFile: some(File('')),
              )
              .timeout(timeoutDuration);
        } on InvalidStateError catch (e) {
          expectedError = e;
        }
      });
      expect(
        expectedError,
        const InvalidStateError(message: 'captureWidget called with invalid generate image settings'),
      );
    });

    testWidgets('Should cancel processing and return proper message if a variable text has no source file set.',
        (tester) async {
      final MockFilePicker mockFilePicker = MockFilePicker();
      final Directory directory = Directory('/abc');
      when(
        mockFilePicker.pickPath(
          initialDirectory: captureThat(equals('/'), named: 'initialDirectory'),
        ),
      ).thenAnswer((_) async => some(directory));

      final ScreenshotCubit cubit = createScreenshotCubit(filePicker: mockFilePicker);

      await cubit.setOutputImageDirectory();

      final List<ScreenshotState> actualStates = [];

      cubit.stream.listen(actualStates.add);

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      // start capturing
      late final Either<String, void> result;
      await tester.runAsync(() async {
        result = await cubit
            .captureWidget(
              context: context,
              elements: [variableTextNoSourceFile],
              canvasSize: const Size(100, 100),
              canvasBackgroundColor: none(),
              canvasBackgroundImageFile: none(),
            )
            .timeout(timeoutDuration);
      });
      await tester.pumpAndSettle();

      final List<ScreenshotState> expectedStates = [
        createScreenshotState()
            .copyWith(processingState: ProcessingState.processStart, outputImageDirectory: some(directory)),
        createScreenshotState().copyWith(processingState: ProcessingState.idle, outputImageDirectory: some(directory)),
      ];

      expect(actualStates, expectedStates);

      expect(result, left("Some texts have no source file. All variable texts must have a source file."));
    });

    testWidgets(
        'Should cancel processing and return proper message if a variable texts files have different lines count.',
        (tester) async {
      final MockFilePicker mockFilePicker = MockFilePicker();
      final Directory directory = Directory('/abc');
      when(
        mockFilePicker.pickPath(
          initialDirectory: captureThat(equals('/'), named: 'initialDirectory'),
        ),
      ).thenAnswer((_) async => some(directory));

      final ScreenshotCubit cubit = createScreenshotCubit(filePicker: mockFilePicker);

      await cubit.setOutputImageDirectory();

      final List<ScreenshotState> actualStates = [];

      cubit.stream.listen(actualStates.add);

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      // start capturing
      late final Either<String, void> result;
      await tester.runAsync(() async {
        result = await cubit
            .captureWidget(
              context: context,
              elements: [namesVariableText, idsVariableText],
              canvasSize: const Size(100, 100),
              canvasBackgroundColor: none(),
              canvasBackgroundImageFile: none(),
            )
            .timeout(timeoutDuration);
      });
      await tester.pumpAndSettle();

      // assert that data is read correctly and cached
      expect(
        cubit.variableTextsData,
        UnmodifiableListView([
          VariableTextData(
            elementId: namesVariableText.id,
            data: ['Name 1', 'Name 2', 'Name 3', 'Name 4', 'Name 5'],
          ),
          VariableTextData(
            elementId: idsVariableText.id,
            data: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
          ),
        ]),
      );

      final List<ScreenshotState> expectedStates = [
        createScreenshotState()
            .copyWith(processingState: ProcessingState.processStart, outputImageDirectory: some(directory)),
        createScreenshotState()
            .copyWith(processingState: ProcessingState.readingData, outputImageDirectory: some(directory)),
        createScreenshotState()
            .copyWith(processingState: ProcessingState.validatingReadData, outputImageDirectory: some(directory)),
        createScreenshotState().copyWith(processingState: ProcessingState.idle, outputImageDirectory: some(directory)),
      ];

      expect(actualStates, expectedStates);

      expect(result, left("Some texts have different line count. All variable texts must have the same line count."));
    });

    testWidgets('Should generate and save only one image correctly when there is no variable text.', (tester) async {
      // load the used fonts
      final Future<ByteData> abrilFatFaceFontData = rootBundle.load('assets/fonts/AbrilFatface-Regular.ttf');
      final FontLoader fontLoader = FontLoader('AbrilFatFace')..addFont(abrilFatFaceFontData);
      await fontLoader.load();

      // setup the physical size
      tester.binding.window.physicalSizeTestValue = const Size(1366.0, 673.0);
      tester.binding.window.devicePixelRatioTestValue = 1.0;

      // reset the edited settings after the test ends
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      addTearDown(tester.binding.window.clearDevicePixelRatioTestValue);

      final MockFilePicker mockFilePicker = MockFilePicker();
      final Directory outputDirectory = Directory('test_resources/screenshot_cubit_test_resources/one_generated_image');

      createDirectoryIfNotExistsRecursive(outputDirectory);

      when(
        mockFilePicker.pickPath(initialDirectory: captureThat(equals('/'), named: 'initialDirectory')),
      ).thenAnswer((_) async => some(outputDirectory));

      final ScreenshotCubit cubit = createScreenshotCubit(
        filePicker: mockFilePicker,
        screenshotService: ScreenshotService(),
        imageEditor: ImageEditor(),
      );

      await cubit.setOutputImageDirectory();

      cubit.setBaseFileName('nice');
      cubit.setFileNamingType(FileNamingType.namePlusNumber);
      cubit.setImageFileExtension(ImageFormat.jpeg);
      cubit.setOutputImageSize(const Size(800, 600));
      cubit.setOutputImageQuality(10);

      await tester.pumpAndSettle();
      final ScreenshotState stateBeforeCaptureStart = cubit.state;

      final List<ScreenshotState> actualStates = [];

      cubit.stream.listen(actualStates.add);

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      // start capturing
      late final Either<String, void> result;
      await tester.runAsync(() async {
        result = await cubit.captureWidget(
          context: context,
          elements: [staticText],
          canvasSize: const Size(1188.4, 605.7),
          canvasBackgroundColor: const Some(Color(0xffff0000)),
          canvasBackgroundImageFile: some(File('test_resources/screenshot_cubit_test_resources/fayruz_love.png')),
        );
      });

      // assert no variable text data exists
      expect(cubit.variableTextsData, isEmpty);

      // assert that the image is generated correctly
      final bool generatedImageFileExists = File('${outputDirectory.path}/nice_0.jpeg').existsSync();
      expect(generatedImageFileExists, true);
      final Uint8List generatedImageBytes = File('${outputDirectory.path}/nice_0.jpeg').readAsBytesSync();
      expect(generatedImageBytes, expectedGeneratedOneImageByteData);

      // assert that only 1 image is generated
      expect(outputDirectory.listSync().length, 1);

      // assert that states are emitted correctly
      final List<ScreenshotState> expectedStates = [
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.processStart),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.readingData),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.validatingReadData),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.capturing,
          progressMessage: some('Image 1 of 1'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.resizing,
          progressMessage: some('Image 1 of 1'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.savingData,
          progressMessage: some('Image 1 of 1'),
        ),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.idle, progressMessage: none()),
      ];
      expect(actualStates, expectedStates);

      // assert that the result is correct
      expect(result, right(null));
    });

    testWidgets('Should generate and save multiple images correctly when there are variable texts.', (tester) async {
      // load the used fonts
      final Future<ByteData> abrilFatFaceFontData = rootBundle.load('assets/fonts/AbrilFatface-Regular.ttf');
      final FontLoader fontLoader = FontLoader('AbrilFatFace')..addFont(abrilFatFaceFontData);
      await fontLoader.load();

      // setup the physical size
      tester.binding.window.physicalSizeTestValue = const Size(1366.0, 673.0);
      tester.binding.window.devicePixelRatioTestValue = 1.0;

      // reset the edited settings after the test ends
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      addTearDown(tester.binding.window.clearDevicePixelRatioTestValue);

      final MockFilePicker mockFilePicker = MockFilePicker();
      final Directory outputDirectory =
          Directory('test_resources/screenshot_cubit_test_resources/multiple_generated_images');

      createDirectoryIfNotExistsRecursive(outputDirectory);

      when(
        mockFilePicker.pickPath(initialDirectory: captureThat(equals('/'), named: 'initialDirectory')),
      ).thenAnswer((_) async => some(outputDirectory));

      final ScreenshotCubit cubit = createScreenshotCubit(
        filePicker: mockFilePicker,
        screenshotService: ScreenshotService(),
        imageEditor: ImageEditor(),
      );

      await cubit.setOutputImageDirectory();

      cubit.setBaseFileName('nice');
      cubit.setFileNamingType(FileNamingType.namePlusNumber);
      cubit.setImageFileExtension(ImageFormat.jpeg);
      cubit.setOutputImageSize(const Size(800, 600));
      cubit.setOutputImageQuality(10);

      await tester.pumpAndSettle();
      final ScreenshotState stateBeforeCaptureStart = cubit.state;

      final List<ScreenshotState> actualStates = [];

      cubit.stream.listen(actualStates.add);

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      // start capturing
      late final Either<String, void> result;
      await tester.runAsync(() async {
        result = await cubit.captureWidget(
          context: context,
          elements: [staticText, namesShortVariableText],
          canvasSize: const Size(1188.4, 605.7),
          canvasBackgroundColor: const Some(Color(0xffff0000)),
          canvasBackgroundImageFile: some(File('test_resources/screenshot_cubit_test_resources/fayruz_love.png')),
        );
      });

      // assert no variable text data exists
      expect(cubit.variableTextsData, [
        VariableTextData(elementId: '2', data: ['Name 1', 'Name 2'])
      ]);

      // assert that the images are generated correctly
      final bool generatedImageFile1Exists = File('${outputDirectory.path}/nice_0.jpeg').existsSync();
      final bool generatedImageFile2Exists = File('${outputDirectory.path}/nice_1.jpeg').existsSync();
      expect(generatedImageFile1Exists, true);
      expect(generatedImageFile2Exists, true);

      final Uint8List generatedImage1Bytes = File('${outputDirectory.path}/nice_0.jpeg').readAsBytesSync();
      final Uint8List generatedImage2Bytes = File('${outputDirectory.path}/nice_1.jpeg').readAsBytesSync();
      expect(generatedImage1Bytes, expectedGeneratedImage1ByteData);
      expect(generatedImage2Bytes, expectedGeneratedImage2ByteData);

      // assert that only 1 image is generated
      expect(outputDirectory.listSync().length, 2);

      // assert that states are emitted correctly
      final List<ScreenshotState> expectedStates = [
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.processStart),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.readingData),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.validatingReadData),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.capturing,
          progressMessage: some('Image 1 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.capturing,
          progressMessage: some('Image 2 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.resizing,
          progressMessage: some('Image 1 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.savingData,
          progressMessage: some('Image 1 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.resizing,
          progressMessage: some('Image 2 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.savingData,
          progressMessage: some('Image 2 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.idle,
          progressMessage: none(),
        ),
      ];
      expect(actualStates, expectedStates);

      // assert that the result is correct
      expect(result, right(null));
    });

    testWidgets('Should return the proper response when an error happens.', (tester) async {
      final MockFilePicker mockFilePicker = MockFilePicker();
      final Directory outputDirectory = Directory('test_resources/screenshot_cubit_test_resources/one_generated_image');

      createDirectoryIfNotExistsRecursive(outputDirectory);

      when(
        mockFilePicker.pickPath(initialDirectory: captureThat(equals('/'), named: 'initialDirectory')),
      ).thenAnswer((_) async => some(outputDirectory));

      final MockImageEditor mockImageEditor = MockImageEditor();
      when(mockImageEditor.copyResize(
        inputFormat: anyNamed('inputFormat'),
        imageData: anyNamed('imageData'),
        width: anyNamed('width'),
        height: anyNamed('height'),
        quality: anyNamed('quality'),
        outputFormat: anyNamed('outputFormat'),
      )).thenThrow(ImageEditorException('An error has occurred.'));

      final ScreenshotCubit cubit = createScreenshotCubit(
        filePicker: mockFilePicker,
        screenshotService: ScreenshotService(),
        imageEditor: mockImageEditor,
      );

      await cubit.setOutputImageDirectory();
      await tester.pumpAndSettle();

      final List<ScreenshotState> actualStates = [];
      cubit.stream.listen(actualStates.add);

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      final ScreenshotState stateBeforeCaptureStart = cubit.state;

      // start capturing
      late final Either<String, void> result;
      await tester.runAsync(() async {
        result = await cubit.captureWidget(
          context: context,
          elements: [staticText],
          canvasSize: const Size(1188.4, 605.7),
          canvasBackgroundColor: const Some(Color(0xffff0000)),
          canvasBackgroundImageFile: some(File('test_resources/screenshot_cubit_test_resources/fayruz_love.png')),
        );
      });
      await tester.pumpAndSettle();

      // assert the future completes with the correct result
      expect(result, left('An error has occurred.'));

      // assert that states are emitted correctly
      final List<ScreenshotState> expectedStates = [
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.processStart),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.readingData),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.validatingReadData),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.capturing,
          progressMessage: some('Image 1 of 1'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.resizing,
          progressMessage: some('Image 1 of 1'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.idle,
          progressMessage: none(),
        ),
      ];
      expect(actualStates, expectedStates);
    });
  });
  group('cancel', () {
    // variables used in multiple tests
    const Duration timeoutDuration = Duration(seconds: 1);
    const String operationCanceledString = 'Operation Canceled!';
    const Duration delay = Duration(milliseconds: 100);
    const editor.Element staticText = editor.Element(
      id: '1',
      showOrder: 1,
      rect: Rect.fromLTWH(339, 15.5, 598.40, 37.40),
      properties: editor.StaticTextProperties(
        text: 'Type the text here (Double tap to start):',
        textStyle: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'AbrilFatFace'),
      ),
    );

    editor.Element variableTextNoSource = editor.Element(
      id: '2',
      showOrder: 2,
      rect: const Rect.fromLTWH(339, 15.5, 598.40, 37.40),
      properties: editor.VariableTextProperties(
        placeHolderText: 'Generated Text Appears Here.',
        sourceFilePath: none(),
      ),
    );
    final editor.Element namesShortVariableText = editor.Element(
      id: '2',
      showOrder: 2,
      rect: const Rect.fromLTWH(339, 15.5, 598.40, 37.40),
      properties: editor.VariableTextProperties(
        placeHolderText: 'Generated Text Appears Here.',
        textStyle: const TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'AbrilFatFace'),
        sourceFilePath: some('test_resources/screenshot_cubit_test_resources/names_short.txt'),
      ),
    );
    final editor.Element namesVariableText = editor.Element(
      id: '3',
      showOrder: 3,
      rect: const Rect.fromLTWH(339, 15.5, 598.40, 37.40),
      properties: editor.VariableTextProperties(
        placeHolderText: 'Generated Text Appears Here.',
        textStyle: const TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'AbrilFatFace'),
        sourceFilePath: some('test_resources/screenshot_cubit_test_resources/names.txt'),
      ),
    );

    testWidgets(
        'Should cancel the operation correctly when cancel is called after processStart processing state is emitted.',
        (tester) async {
      final MockFilePicker mockFilePicker = MockFilePicker();
      final Directory outputDirectory =
          Directory('test_resources/screenshot_cubit_test_resources/cancel_directory/should_stay_empty');

      createDirectoryIfNotExistsRecursive(outputDirectory);

      when(
        mockFilePicker.pickPath(initialDirectory: captureThat(equals('/'), named: 'initialDirectory')),
      ).thenAnswer((_) async => some(outputDirectory));

      final ScreenshotCubit cubit = createScreenshotCubit(
        filePicker: mockFilePicker,
        screenshotService: ScreenshotService(),
        imageEditor: ImageEditor(),
      );

      await cubit.setOutputImageDirectory();

      await tester.pumpAndSettle();

      final List<ScreenshotState> actualStates = [];

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      cubit.stream.listen((state) {
        actualStates.add(state);
        if (state.processingState == ProcessingState.processStart) {
          cubit.cancelCaptureWidget(context);
        }
      });

      final ScreenshotState stateBeforeCaptureStart = cubit.state;

      // start capturing
      late final Either<String, void> result;
      await tester.runAsync(() async {
        result = await cubit
            .captureWidget(
              context: context,
              elements: [staticText, variableTextNoSource],
              canvasSize: const Size(1188.4, 605.7),
              canvasBackgroundColor: const Some(Color(0xffff0000)),
              canvasBackgroundImageFile: some(File('test_resources/screenshot_cubit_test_resources/fayruz_love.png')),
            )
            .timeout(timeoutDuration);
        await Future.delayed(delay); // So the test can have a chance to fail
      });
      await tester.pumpAndSettle();

      final List<ScreenshotState> expectedStates = [
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.processStart),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.idle),
      ];

      expect(actualStates, expectedStates);

      expect(result, left(operationCanceledString));

      expect(outputDirectory.listSync(), isEmpty);

      expect(cubit.variableTextsData, isEmpty);

      expect(cubit.state, stateBeforeCaptureStart.copyWith(processingState: ProcessingState.idle));
    });

    testWidgets(
        'Should cancel the operation correctly when cancel is called after readingData processing state is emitted.',
        (tester) async {
      final MockFilePicker mockFilePicker = MockFilePicker();
      final Directory outputDirectory =
          Directory('test_resources/screenshot_cubit_test_resources/cancel_directory/should_stay_empty');

      createDirectoryIfNotExistsRecursive(outputDirectory);

      when(
        mockFilePicker.pickPath(initialDirectory: captureThat(equals('/'), named: 'initialDirectory')),
      ).thenAnswer((_) async => some(outputDirectory));

      final ScreenshotCubit cubit = createScreenshotCubit(
        filePicker: mockFilePicker,
        screenshotService: ScreenshotService(),
        imageEditor: ImageEditor(),
      );

      await cubit.setOutputImageDirectory();

      await tester.pumpAndSettle();

      final List<ScreenshotState> actualStates = [];

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      cubit.stream.listen((state) {
        actualStates.add(state);
        if (state.processingState == ProcessingState.readingData) {
          cubit.cancelCaptureWidget(context);
        }
      });

      final ScreenshotState stateBeforeCaptureStart = cubit.state;

      // start capturing
      late final Either<String, void> result;
      await tester.runAsync(() async {
        result = await cubit
            .captureWidget(
              context: context,
              elements: [staticText, namesShortVariableText],
              canvasSize: const Size(1188.4, 605.7),
              canvasBackgroundColor: const Some(Color(0xffff0000)),
              canvasBackgroundImageFile: some(File('test_resources/screenshot_cubit_test_resources/fayruz_love.png')),
            )
            .timeout(timeoutDuration);
        await Future.delayed(delay); // So the test can have a chance to fail
      });
      await tester.pumpAndSettle();

      final List<ScreenshotState> expectedStates = [
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.processStart),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.readingData),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.idle),
      ];

      expect(actualStates, expectedStates);

      expect(result, left(operationCanceledString));

      expect(outputDirectory.listSync(), isEmpty);

      expect(cubit.state, stateBeforeCaptureStart.copyWith(processingState: ProcessingState.idle));

      expect(
        cubit.variableTextsData,
        [
          VariableTextData(elementId: '2', data: ['Name 1', 'Name 2'])
        ],
      );
    });

    testWidgets(
        'Should cancel the operation correctly when cancel is called after validatingReadData processing state is emitted.',
        (tester) async {
      final MockFilePicker mockFilePicker = MockFilePicker();
      final Directory outputDirectory =
          Directory('test_resources/screenshot_cubit_test_resources/cancel_directory/should_stay_empty');

      createDirectoryIfNotExistsRecursive(outputDirectory);

      when(
        mockFilePicker.pickPath(initialDirectory: captureThat(equals('/'), named: 'initialDirectory')),
      ).thenAnswer((_) async => some(outputDirectory));

      final ScreenshotCubit cubit = createScreenshotCubit(
        filePicker: mockFilePicker,
        screenshotService: ScreenshotService(),
        imageEditor: ImageEditor(),
      );

      await cubit.setOutputImageDirectory();

      editor.Element variableText1 = namesShortVariableText;
      editor.Element variableText2 = namesVariableText;

      await tester.pumpAndSettle();

      final List<ScreenshotState> actualStates = [];

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      cubit.stream.listen((state) {
        actualStates.add(state);
        if (state.processingState == ProcessingState.validatingReadData) {
          cubit.cancelCaptureWidget(context);
        }
      });

      final ScreenshotState stateBeforeCaptureStart = cubit.state;

      // start capturing
      late final Either<String, void> result;
      await tester.runAsync(() async {
        result = await cubit
            .captureWidget(
              context: context,
              elements: [staticText, variableText1, variableText2],
              canvasSize: const Size(1188.4, 605.7),
              canvasBackgroundColor: const Some(Color(0xffff0000)),
              canvasBackgroundImageFile: some(File('test_resources/screenshot_cubit_test_resources/fayruz_love.png')),
            )
            .timeout(timeoutDuration);
        await Future.delayed(delay); // So the test can have a chance to fail
      });
      await tester.pumpAndSettle();

      final List<ScreenshotState> expectedStates = [
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.processStart),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.readingData),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.validatingReadData),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.idle),
      ];

      expect(actualStates, expectedStates);

      expect(result, left(operationCanceledString));

      expect(outputDirectory.listSync(), isEmpty);

      expect(cubit.state, stateBeforeCaptureStart.copyWith(processingState: ProcessingState.idle));

      expect(
        cubit.variableTextsData,
        UnmodifiableListView([
          VariableTextData(elementId: '2', data: ['Name 1', 'Name 2']),
          VariableTextData(elementId: '3', data: ['Name 1', 'Name 2', 'Name 3', 'Name 4', 'Name 5']),
        ]),
      );
    });

    testWidgets(
        'Should cancel the operation correctly when cancel is called after capturing processing state is emitted and there are no variable texts.',
        (tester) async {
      final MockFilePicker mockFilePicker = MockFilePicker();
      final Directory outputDirectory =
          Directory('test_resources/screenshot_cubit_test_resources/cancel_directory/should_stay_empty');

      createDirectoryIfNotExistsRecursive(outputDirectory);

      when(
        mockFilePicker.pickPath(initialDirectory: captureThat(equals('/'), named: 'initialDirectory')),
      ).thenAnswer((_) async => some(outputDirectory));

      final ScreenshotCubit cubit = createScreenshotCubit(
        filePicker: mockFilePicker,
        screenshotService: ScreenshotService(),
        imageEditor: ImageEditor(),
      );

      await cubit.setOutputImageDirectory();

      await tester.pumpAndSettle();

      final List<ScreenshotState> actualStates = [];

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      cubit.stream.listen((state) {
        actualStates.add(state);
        if (state.processingState == ProcessingState.capturing) {
          cubit.cancelCaptureWidget(context);
        }
      });

      final ScreenshotState stateBeforeCaptureStart = cubit.state;

      // start capturing
      late final Either<String, void> result;
      await tester.runAsync(() async {
        result = await cubit
            .captureWidget(
              context: context,
              elements: [staticText],
              canvasSize: const Size(1188.4, 605.7),
              canvasBackgroundColor: const Some(Color(0xffff0000)),
              canvasBackgroundImageFile: some(File('test_resources/screenshot_cubit_test_resources/fayruz_love.png')),
            )
            .timeout(timeoutDuration);
        await Future.delayed(delay); // So the test can have a chance to fail
      });
      await tester.pumpAndSettle();

      final List<ScreenshotState> expectedStates = [
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.processStart),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.readingData),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.validatingReadData),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.capturing,
          progressMessage: some('Image 1 of 1'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.idle,
          progressMessage: none(),
        ),
      ];

      expect(actualStates, expectedStates);

      expect(result, left(operationCanceledString));

      expect(outputDirectory.listSync(), isEmpty);

      expect(cubit.state, stateBeforeCaptureStart.copyWith(processingState: ProcessingState.idle));

      expect(
        cubit.variableTextsData,
        UnmodifiableListView([]),
      );
    });

    testWidgets(
        'Should cancel the operation correctly when cancel is called after capturing processing state is emitted and there are variable texts.',
        (tester) async {
      final MockFilePicker mockFilePicker = MockFilePicker();
      final Directory outputDirectory =
          Directory('test_resources/screenshot_cubit_test_resources/cancel_directory/should_stay_empty');

      createDirectoryIfNotExistsRecursive(outputDirectory);

      when(
        mockFilePicker.pickPath(initialDirectory: captureThat(equals('/'), named: 'initialDirectory')),
      ).thenAnswer((_) async => some(outputDirectory));

      final ScreenshotCubit cubit = createScreenshotCubit(
        filePicker: mockFilePicker,
        screenshotService: ScreenshotService(),
        imageEditor: ImageEditor(),
      );

      await cubit.setOutputImageDirectory();

      editor.Element variableText1 = namesShortVariableText;

      editor.Element variableText2 = namesShortVariableText.copyWith(id: '3', showOrder: 3);

      await tester.pumpAndSettle();

      final List<ScreenshotState> actualStates = [];

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      cubit.stream.listen((state) {
        actualStates.add(state);
        if (state.processingState == ProcessingState.capturing) {
          cubit.cancelCaptureWidget(context);
        }
      });

      final ScreenshotState stateBeforeCaptureStart = cubit.state;

      // start capturing
      late final Either<String, void> result;
      await tester.runAsync(() async {
        result = await cubit
            .captureWidget(
              context: context,
              elements: [staticText, variableText1, variableText2],
              canvasSize: const Size(1188.4, 605.7),
              canvasBackgroundColor: const Some(Color(0xffff0000)),
              canvasBackgroundImageFile: some(File('test_resources/screenshot_cubit_test_resources/fayruz_love.png')),
            )
            .timeout(timeoutDuration);
        await Future.delayed(const Duration(seconds: 5)); // So the test can have a chance to fail
      });
      await tester.pumpAndSettle();

      final List<ScreenshotState> expectedStates = [
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.processStart),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.readingData),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.validatingReadData),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.capturing,
          progressMessage: some('Image 1 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.idle,
          progressMessage: none(),
        ),
      ];

      expect(actualStates, expectedStates);

      expect(result, left(operationCanceledString));

      expect(outputDirectory.listSync(), isEmpty);

      expect(cubit.state, stateBeforeCaptureStart.copyWith(processingState: ProcessingState.idle));

      expect(
        cubit.variableTextsData,
        UnmodifiableListView([
          VariableTextData(elementId: '2', data: ['Name 1', 'Name 2']),
          VariableTextData(elementId: '3', data: ['Name 1', 'Name 2']),
        ]),
      );
    });

    testWidgets(
        'Should cancel the operation correctly when cancel is called after capturing ends and before resizing starts.',
        (tester) async {
      final MockFilePicker mockFilePicker = MockFilePicker();
      final Directory outputDirectory =
          Directory('test_resources/screenshot_cubit_test_resources/cancel_directory/should_stay_empty');

      createDirectoryIfNotExistsRecursive(outputDirectory);

      when(
        mockFilePicker.pickPath(initialDirectory: captureThat(equals('/'), named: 'initialDirectory')),
      ).thenAnswer((_) async => some(outputDirectory));

      final ScreenshotCubit cubit = createScreenshotCubit(
        filePicker: mockFilePicker,
        screenshotService: ScreenshotService(),
        imageEditor: ImageEditor(),
      );

      await cubit.setOutputImageDirectory();

      await tester.pumpAndSettle();

      final List<ScreenshotState> actualStates = [];

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      cubit.stream.listen((state) {
        actualStates.add(state);
        if (state.processingState == ProcessingState.capturing) {
          cubit.cancelCaptureWidget(context);
        }
      });

      final ScreenshotState stateBeforeCaptureStart = cubit.state;

      // start capturing
      late final Either<String, void> result;
      await tester.runAsync(() async {
        result = await cubit.captureWidget(
          context: context,
          elements: [staticText],
          canvasSize: const Size(1188.4, 605.7),
          canvasBackgroundColor: const Some(Color(0xffff0000)),
          canvasBackgroundImageFile: some(File('test_resources/screenshot_cubit_test_resources/fayruz_love.png')),
        );
        await Future.delayed(const Duration(seconds: 5)); // So the test can have a chance to fail
      });
      await tester.pumpAndSettle();

      final List<ScreenshotState> expectedStates = [
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.processStart),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.readingData),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.validatingReadData),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.capturing,
          progressMessage: some('Image 1 of 1'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.idle,
          progressMessage: none(),
        ),
      ];

      expect(actualStates, expectedStates);

      expect(result, left(operationCanceledString));

      expect(outputDirectory.listSync(), isEmpty);

      expect(cubit.state, stateBeforeCaptureStart.copyWith(processingState: ProcessingState.idle));

      expect(
        cubit.variableTextsData,
        UnmodifiableListView([]),
      );
    });
    testWidgets(
        'Should cancel the operation correctly when cancel is called after resizing processing state is emitted.',
        (tester) async {
      final MockFilePicker mockFilePicker = MockFilePicker();
      final Directory outputDirectory = Directory(
          'test_resources/screenshot_cubit_test_resources/cancel_directory/shouldnt_be_empty_after_saving_data');

      createDirectoryIfNotExistsRecursive(outputDirectory);

      when(
        mockFilePicker.pickPath(initialDirectory: captureThat(equals('/'), named: 'initialDirectory')),
      ).thenAnswer((_) async => some(outputDirectory));

      final ScreenshotCubit cubit = createScreenshotCubit(
        filePicker: mockFilePicker,
        screenshotService: ScreenshotService(),
        imageEditor: ImageEditor(),
      );

      await cubit.setOutputImageDirectory();

      await tester.pumpAndSettle();

      final List<ScreenshotState> actualStates = [];

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      cubit.stream.listen((state) {
        actualStates.add(state);
        if (state.processingState == ProcessingState.resizing) {
          cubit.cancelCaptureWidget(context);
        }
      });

      final ScreenshotState stateBeforeCaptureStart = cubit.state;

      // start capturing
      late final Either<String, void> result;
      await tester.runAsync(() async {
        result = await cubit.captureWidget(
          context: context,
          elements: [staticText, namesShortVariableText],
          canvasSize: const Size(1188.4, 605.7),
          canvasBackgroundColor: const Some(Color(0xffff0000)),
          canvasBackgroundImageFile: some(File('test_resources/screenshot_cubit_test_resources/fayruz_love.png')),
        );
        await Future.delayed(const Duration(seconds: 5)); // So the test can have a chance to fail
      });
      await tester.pumpAndSettle();

      final List<ScreenshotState> expectedStates = [
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.processStart),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.readingData),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.validatingReadData),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.capturing,
          progressMessage: some('Image 1 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.capturing,
          progressMessage: some('Image 2 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.resizing,
          progressMessage: some('Image 1 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.idle,
          progressMessage: none(),
        ),
      ];

      expect(actualStates, expectedStates);

      expect(result, left(operationCanceledString));

      expect(outputDirectory.listSync().length, 1);
      expect(outputDirectory.listSync()[0].path, endsWith('0.png'));

      expect(cubit.state, stateBeforeCaptureStart.copyWith(processingState: ProcessingState.idle));

      expect(
        cubit.variableTextsData,
        UnmodifiableListView([
          VariableTextData(elementId: '2', data: ['Name 1', 'Name 2'])
        ]),
      );
    });

    testWidgets('Should cancel the operation correctly when cancel is called after processing is done.',
        (tester) async {
      final MockFilePicker mockFilePicker = MockFilePicker();
      final Directory outputDirectory = Directory(
          'test_resources/screenshot_cubit_test_resources/cancel_directory/shouldnt_be_empty_after_processing');

      createDirectoryIfNotExistsRecursive(outputDirectory);

      when(
        mockFilePicker.pickPath(initialDirectory: captureThat(equals('/'), named: 'initialDirectory')),
      ).thenAnswer((_) async => some(outputDirectory));

      final ScreenshotCubit cubit = createScreenshotCubit(
        filePicker: mockFilePicker,
        screenshotService: ScreenshotService(),
        imageEditor: ImageEditor(),
      );

      await cubit.setOutputImageDirectory();

      await tester.pumpAndSettle();

      final List<ScreenshotState> actualStates = [];

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: BlocProvider(
            create: (_) => cubit,
            child: Container(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      cubit.stream.listen((state) {
        actualStates.add(state);
        if (state.processingState == ProcessingState.savingData && state.progressMessage == some('Image 2 of 2')) {
          cubit.cancelCaptureWidget(context);
        }
      });

      final ScreenshotState stateBeforeCaptureStart = cubit.state;

      // start capturing
      late final Either<String, void> result;
      await tester.runAsync(() async {
        result = await cubit.captureWidget(
          context: context,
          elements: [staticText, namesShortVariableText],
          canvasSize: const Size(1188.4, 605.7),
          canvasBackgroundColor: const Some(Color(0xffff0000)),
          canvasBackgroundImageFile: some(File('test_resources/screenshot_cubit_test_resources/fayruz_love.png')),
        );
        await Future.delayed(const Duration(seconds: 5)); // So the test can have a chance to fail
      });
      await tester.pumpAndSettle();

      final List<ScreenshotState> expectedStates = [
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.processStart),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.readingData),
        stateBeforeCaptureStart.copyWith(processingState: ProcessingState.validatingReadData),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.capturing,
          progressMessage: some('Image 1 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.capturing,
          progressMessage: some('Image 2 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.resizing,
          progressMessage: some('Image 1 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.savingData,
          progressMessage: some('Image 1 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.resizing,
          progressMessage: some('Image 2 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.savingData,
          progressMessage: some('Image 2 of 2'),
        ),
        stateBeforeCaptureStart.copyWith(
          processingState: ProcessingState.idle,
          progressMessage: none(),
        ),
      ];

      expect(actualStates, expectedStates);

      expect(result, left(operationCanceledString));

      expect(outputDirectory.listSync().length, 2);
      expect(outputDirectory.listSync()[0].path, endsWith('1.png'));
      expect(outputDirectory.listSync()[1].path, endsWith('0.png'));

      expect(cubit.state, stateBeforeCaptureStart.copyWith(processingState: ProcessingState.idle));

      expect(
        cubit.variableTextsData,
        UnmodifiableListView([
          VariableTextData(elementId: '2', data: ['Name 1', 'Name 2'])
        ]),
      );
    });
  });
  group('FileNamingType', () {
    test(
        'Should have the correct values',
        () => expect(
              FileNamingType.values,
              [FileNamingType.date, FileNamingType.number, FileNamingType.namePlusNumber],
            ));
  });
  group('AllowedOutputImageFileExtension', () {
    test(
        'Should have the correct values',
        () => expect(
              AllowedOutputImageFileExtension.values,
              [AllowedOutputImageFileExtension.png, AllowedOutputImageFileExtension.jpeg],
            ));
  });
  group('ProcessingState', () {
    test(
        'Should have the correct values',
        () => expect(
              ProcessingState.values,
              [
                ProcessingState.idle,
                ProcessingState.processStart,
                ProcessingState.readingData,
                ProcessingState.validatingReadData,
                ProcessingState.capturing,
                ProcessingState.resizing,
                ProcessingState.savingData,
              ],
            ));
    testWidgets('ProcessingStateExtension should return correct messages', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: Container(),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      expect(ProcessingState.idle.getMessage(context), 'Idle');
      expect(ProcessingState.processStart.getMessage(context), 'Process started');
      expect(ProcessingState.readingData.getMessage(context), 'Reading Data');
      expect(ProcessingState.validatingReadData.getMessage(context), 'Validating Read Data');
      expect(ProcessingState.capturing.getMessage(context), 'Capturing');
      expect(ProcessingState.resizing.getMessage(context), 'Resizing');
      expect(ProcessingState.savingData.getMessage(context), 'Saving Data');
    });
  });
  group('GenerateImageSettingsValidationResults', () {
    test(
        'Should have the correct values',
        () => expect(
              GenerateImageSettingsValidationResult.values,
              [
                GenerateImageSettingsValidationResult.valid,
                GenerateImageSettingsValidationResult.directoryMustBeSet,
                GenerateImageSettingsValidationResult.baseFileNameMustBeSet,
                GenerateImageSettingsValidationResult.baseFileNameMustBeAlphaNumeric
              ],
            ));
    testWidgets('GenerateImageSettingsValidationResultExtension should return correct messages', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale.fromSubtags(languageCode: 'en'),
          home: Container(),
        ),
      );
      await tester.pumpAndSettle();
      final BuildContext context = tester.element(find.byType(Container));

      expect(GenerateImageSettingsValidationResult.baseFileNameMustBeSet.getMessage(context),
          'Base file name must be set.');
      expect(GenerateImageSettingsValidationResult.directoryMustBeSet.getMessage(context), 'Directory must be set.');
      expect(GenerateImageSettingsValidationResult.baseFileNameMustBeAlphaNumeric.getMessage(context),
          'Only lower case letters, upper case letters, numbers, and underscores are allowed in the base file name.');
      expect(GenerateImageSettingsValidationResult.valid.getMessage(context), 'Valid');
    });
  });
}
