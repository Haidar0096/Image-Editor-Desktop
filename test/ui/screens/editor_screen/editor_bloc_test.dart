import 'dart:io';
import 'dart:ui';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart' hide ISet;
import 'package:flutter/material.dart' as material;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:photo_editor/services/editor/element_id_generator.dart';
import 'package:photo_editor/services/file_picker/file_picker.dart';
import 'package:photo_editor/services/timeline/timeline.dart';
import 'package:photo_editor/ui/common/styles/styles.dart' as styles;
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'editor_bloc_test.mocks.dart';

@GenerateMocks(
  [Logger, ElementIdGenerator, FilePicker],
  customMocks: [MockSpec<Timeline<Editor>>(as: #MockEditorTimeline)],
)
void main() {
  EditorBloc createEditorBloc({
    FilePicker? filePicker,
    Logger? logger,
    ElementIdGenerator? elementIdGenerator,
    Timeline<Editor>? timeline,
  }) =>
      EditorBloc(
        filePicker ?? MockFilePicker(),
        logger ?? MockLogger(),
        elementIdGenerator ?? MockElementIdGenerator(),
        timeline ?? Timeline<Editor>(),
      );

  group('initialization tests', () {
    // define elements used in tests
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );

    late MockFilePicker mockFilePicker;
    late ElementIdGenerator mockElementIdGenerator;

    blocTest<EditorBloc, EditorState>(
      'Emits no states when created',
      build: () => createEditorBloc(),
      expect: () => [],
    );

    test('Should have correct initial state', () {
      final editorBloc = createEditorBloc();
      expect(
        editorBloc.state,
        EditorState.initial(),
      );
    });

    blocTest<EditorBloc, EditorState>(
      'Should save the initial state to the editor timeline',
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        mockElementIdGenerator = MockElementIdGenerator();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedImageFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer(
                (realInvocation) async => some(File((image1.properties as FileImageProperties).sourceFilePath)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      act: (bloc) {
        bloc.add(const EditorEvent.addImage());
        bloc.add(const EditorEvent.undo());
      },
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: none(),
        );
        return [
          expectedState,
          EditorState.initial(),
        ];
      },
    );
  });

  group('Undo', () {
    // define elements used in tests
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );

    late MockFilePicker mockFilePicker;
    late MockElementIdGenerator mockElementIdGenerator;

    blocTest<EditorBloc, EditorState>(
      'Undo replays previous state in history if it exists.',
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        mockElementIdGenerator = MockElementIdGenerator();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedImageFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer(
                (realInvocation) async => some(File((image1.properties as FileImageProperties).sourceFilePath)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) async {
        // add an image
        bloc.add(const EditorEvent.addImage());
        // then undo
        bloc.add(const EditorEvent.undo());
      },
      expect: () {
        return [
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
          EditorState.initial(),
        ];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Undo does not change the state if there is no previous state in history.',
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        mockElementIdGenerator = MockElementIdGenerator();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedImageFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer(
                (realInvocation) async => some(File((image1.properties as FileImageProperties).sourceFilePath)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        // undo
        bloc.add(const EditorEvent.undo());
        // add image
        bloc.add(const EditorEvent.addImage());
        // undo
        bloc.add(const EditorEvent.undo());
        // undo again
        bloc.add(const EditorEvent.undo());
      },
      expect: () {
        return [
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
          EditorState.initial(),
        ];
      },
    );
  });

  group('Redo', () {
    // define elements used in tests
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );

    late MockFilePicker mockFilePicker;
    late MockElementIdGenerator mockElementIdGenerator;

    blocTest<EditorBloc, EditorState>(
      'Redo replays next state in history if it exists.',
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        mockElementIdGenerator = MockElementIdGenerator();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedImageFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer(
                (realInvocation) async => some(File((image1.properties as FileImageProperties).sourceFilePath)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        // add an image
        bloc.add(const EditorEvent.addImage());
        // then undo
        bloc.add(const EditorEvent.undo());
        // then redo
        bloc.add(const EditorEvent.redo());
      },
      expect: () {
        return [
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
          EditorState.initial(),
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
        ];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Redo does not change the state if there is no next state in history.',
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        mockElementIdGenerator = MockElementIdGenerator();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedImageFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer(
                (realInvocation) async => some(File((image1.properties as FileImageProperties).sourceFilePath)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        // redo
        bloc.add(const EditorEvent.redo());
        // add an image
        bloc.add(const EditorEvent.addImage());
        // then redo
        bloc.add(const EditorEvent.redo());
        // then undo
        bloc.add(const EditorEvent.undo());
        // then redo
        bloc.add(const EditorEvent.redo());
        // then redo again
        bloc.add(const EditorEvent.redo());
      },
      expect: () {
        return [
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
          EditorState.initial(),
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
        ];
      },
    );
  });

  group('AddStaticText', () {
    // note that if we use the same params in the actual app when we call the method that calculates the size of the text
    // before rendering, then we will get a different rect than that in staticText object, that's bcz there is some
    // implicit parameter to the method that calculates the size of the text and which I can't figure out. So until
    // then, this is the best way I have to test AddStaticText event. This does not mean the test is wrong, but it means
    // that the test is being run in a slightly different environment than the one that the app is running in.

    // define elements used in tests
    const Element staticText = Element(
      rect: Rect.fromLTRB(0.0, 0.0, 627.0, 33.0),
      properties: ElementProperties.staticTextProperties(
          text: 'Type the text here:', textStyle: material.TextStyle(fontSize: 30, color: material.Colors.black)),
      showOrder: 1,
      id: '1',
    );

    // set up the mock element id generator
    late ElementIdGenerator mockElementIdGenerator;

    testWidgets(
      'Should emit correct state when addStaticText is fired.',
      (WidgetTester tester) async {
        TestWidgetsFlutterBinding.ensureInitialized();

        // define the mocks
        mockElementIdGenerator = MockElementIdGenerator();

        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(staticText.id);

        // set the screen size
        tester.binding.window.physicalSizeTestValue = const Size(1366.0, 682.0);
        tester.binding.window.devicePixelRatioTestValue = 1.0;

        // resets the screen to its original size after the test end
        addTearDown(tester.binding.window.clearPhysicalSizeTestValue);

        // create the app widget
        await tester.pumpWidget(
          material.MaterialApp(
            theme: styles.themeData,
            home: BlocProvider<EditorBloc>(
              create: (context) => createEditorBloc(elementIdGenerator: mockElementIdGenerator),
              child: const material.Scaffold(),
            ),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          ),
        );
        await tester.pumpAndSettle();

        // get a context to use with the bloc
        final material.BuildContext context = tester.element(find.byType(material.Scaffold));

        // listen to the bloc stream of states
        final List<EditorState> actualStates = [];
        final Stream<EditorState> blocStream = BlocProvider.of<EditorBloc>(context).stream;
        blocStream.listen(actualStates.add);

        // add the event
        BlocProvider.of<EditorBloc>(context).add(
          EditorEvent.addStaticText(
            initialText: AppLocalizations.of(context)!.typeText,
            textDirection: material.Directionality.of(context),
            minWidth: 0.0,
            maxWidth: material.MediaQuery.of(context).size.width,
          ),
        );
        // wait for the event to be processed
        await tester.pumpAndSettle();

        expect(
          actualStates,
          [
            EditorState(
              editor: Editor.fromSet({staticText}),
              draggedElementId: none(),
              dragPosition: none(),
              selectedElementId: none(),
            ),
          ],
        );
      },
    );

    testWidgets(
      'Should save the state after adding the static text.',
      (WidgetTester tester) async {
        TestWidgetsFlutterBinding.ensureInitialized();

        // define the mocks
        mockElementIdGenerator = MockElementIdGenerator();

        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(staticText.id);

        // set the screen size
        tester.binding.window.physicalSizeTestValue = const Size(1366.0, 682.0);
        tester.binding.window.devicePixelRatioTestValue = 1.0;

        // resets the screen to its original size after the test end
        addTearDown(tester.binding.window.clearPhysicalSizeTestValue);

        // create the app widget
        await tester.pumpWidget(
          material.MaterialApp(
            theme: styles.themeData,
            home: BlocProvider<EditorBloc>(
              create: (context) => createEditorBloc(elementIdGenerator: mockElementIdGenerator),
              child: const material.Scaffold(),
            ),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          ),
        );
        await tester.pumpAndSettle();

        // get a context to use with the bloc
        final material.BuildContext context = tester.element(find.byType(material.Scaffold));

        // listen to the bloc stream of states
        final List<EditorState> actualStates = [];
        final Stream<EditorState> blocStream = BlocProvider.of<EditorBloc>(context).stream;
        blocStream.listen(actualStates.add);

        // add the AddStaticText event
        BlocProvider.of<EditorBloc>(context).add(
          EditorEvent.addStaticText(
            initialText: AppLocalizations.of(context)!.typeText,
            textDirection: material.Directionality.of(context),
            minWidth: 0.0,
            maxWidth: material.MediaQuery.of(context).size.width,
          ),
        );
        // wait for the event to be processed
        await tester.pumpAndSettle();

        // add the Undo event
        BlocProvider.of<EditorBloc>(context).add(const EditorEvent.undo());
        // wait for the event to be processed
        await tester.pumpAndSettle();

        // add the Redo event
        BlocProvider.of<EditorBloc>(context).add(const EditorEvent.redo());
        // wait for the event to be processed
        await tester.pumpAndSettle();

        expect(
          actualStates,
          [
            EditorState(
              editor: Editor.fromSet({staticText}),
              draggedElementId: none(),
              dragPosition: none(),
              selectedElementId: none(),
            ),
            EditorState.initial(),
            EditorState(
              editor: Editor.fromSet({staticText}),
              draggedElementId: none(),
              dragPosition: none(),
              selectedElementId: none(),
            ),
          ],
        );
      },
    );
  });

  group('staticTextChanged', () {
    // define elements used in tests
    const Element staticText = Element(
      rect: Rect.fromLTRB(0.0, 0.0, 627.0, 33.0),
      properties: ElementProperties.staticTextProperties(
          text: 'Type the text here:', textStyle: material.TextStyle(fontSize: 30, color: material.Colors.black)),
      showOrder: 1,
      id: '1',
    );

    blocTest<EditorBloc, EditorState>(
      'Should emit correct state when static text changes.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        selectedElementId: some(staticText.id),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) => bloc.add(const EditorEvent.staticTextChanged(updatedText: 'Hello World')),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet(
            {
              staticText.copyWith(
                  properties: (staticText.properties as StaticTextProperties).copyWith(text: 'Hello World'))
            },
          ),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(staticText.id),
        );
        return [expectedState];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should not emit state when there is no selected element and should throw.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        selectedElementId: none(),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) => bloc.add(const EditorEvent.staticTextChanged(updatedText: 'Hello World')),
      expect: () => [],
      errors: () => [const EditorStateError(EditorStateError.noSelectedElement)],
    );

    blocTest<EditorBloc, EditorState>(
        'Should not emit state when selected element is not found in the editor and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({}),
              selectedElementId: some(staticText.id),
              dragPosition: none(),
              draggedElementId: none(),
            ),
        act: (bloc) => bloc.add(const EditorEvent.staticTextChanged(updatedText: 'Hello World')),
        expect: () => [],
        errors: () => [const EditorStateError(EditorStateError.selectedElementDoesNotExist)]);

    blocTest<EditorBloc, EditorState>(
      'Should save the state after changing the static text.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        selectedElementId: some(staticText.id),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) {
        bloc.add(const EditorEvent.staticTextChanged(updatedText: 'Hello World'));
        bloc.add(const EditorEvent.undo());
        bloc.add(const EditorEvent.redo());
      },
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet(
            {
              staticText.copyWith(
                  properties: (staticText.properties as StaticTextProperties).copyWith(text: 'Hello World'))
            },
          ),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(staticText.id),
        );
        return [
          expectedState,
          EditorState.initial(),
          expectedState.copyWith(selectedElementId: none()),
        ];
      },
    );
  });

  group('staticTextStyleChanged', () {
    // define elements used in tests
    const Element staticText = Element(
      rect: Rect.fromLTRB(0.0, 0.0, 627.0, 33.0),
      properties: ElementProperties.staticTextProperties(
          text: 'Type the text here:', textStyle: material.TextStyle(fontSize: 30, color: material.Colors.black)),
      showOrder: 1,
      id: '1',
    );

    blocTest<EditorBloc, EditorState>(
      'Should emit correct state when static text style changes.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        selectedElementId: some(staticText.id),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) => bloc.add(EditorEvent.staticTextStyleChanged(
          updatedTextStyle:
              (staticText.properties as StaticTextProperties).textStyle!.copyWith(color: material.Colors.yellow))),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet(
            {
              staticText.copyWith(
                properties: (staticText.properties as StaticTextProperties).copyWith(
                  textStyle: (staticText.properties as StaticTextProperties)
                      .textStyle!
                      .copyWith(color: material.Colors.yellow),
                ),
              )
            },
          ),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(staticText.id),
        );
        return [expectedState];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should not emit state when there is no selected element and should throw.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        selectedElementId: none(),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) => bloc.add(EditorEvent.staticTextStyleChanged(
          updatedTextStyle:
              (staticText.properties as StaticTextProperties).textStyle!.copyWith(color: material.Colors.yellow))),
      expect: () => [],
      errors: () => [const EditorStateError(EditorStateError.noSelectedElement)],
    );

    blocTest<EditorBloc, EditorState>(
      'Should not emit state when selected element is not found in the editor and should throw.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.empty(),
        selectedElementId: some(staticText.id),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) => bloc.add(EditorEvent.staticTextStyleChanged(
          updatedTextStyle:
              (staticText.properties as StaticTextProperties).textStyle!.copyWith(color: material.Colors.yellow))),
      expect: () => [],
      errors: () => [const EditorStateError(EditorStateError.selectedElementDoesNotExist)],
    );

    blocTest<EditorBloc, EditorState>(
      'Should save state after changing static text style.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        selectedElementId: some(staticText.id),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) {
        bloc.add(EditorEvent.staticTextStyleChanged(
            updatedTextStyle:
                (staticText.properties as StaticTextProperties).textStyle!.copyWith(color: material.Colors.yellow)));
        bloc.add(const EditorEvent.undo());
        bloc.add(const EditorEvent.redo());
      },
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet(
            {
              staticText.copyWith(
                properties: (staticText.properties as StaticTextProperties).copyWith(
                  textStyle: (staticText.properties as StaticTextProperties)
                      .textStyle!
                      .copyWith(color: material.Colors.yellow),
                ),
              )
            },
          ),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(staticText.id),
        );
        return [
          expectedState,
          EditorState.initial(),
          expectedState.copyWith(selectedElementId: none()),
        ];
      },
    );
  });

  group('AddVariableText', () {
    // note that if we use the same params in the actual app when we call the method that calculates the size of the text
    // before rendering, then we will get a different rect than that in variableText object, that's bcz there is some
    // implicit parameter to the method that calculates the size of the text and which I can't figure out. So until
    // then, this is the best way I have to test AddVariableText event. This does not mean the test is wrong, but it means
    // that the test is being run in a slightly different environment than the one that the app is running in.

    // define elements used in tests
    Element variableText = Element(
      rect: const Rect.fromLTRB(0.0, 0.0, 924.0, 33.0),
      properties: ElementProperties.variableTextProperties(
        sourceFilePath: none(),
        placeHolderText: 'Generated text appears here.',
        textStyle: const material.TextStyle(fontSize: 30, color: material.Colors.black),
      ),
      showOrder: 1,
      id: '1',
    );

    // set up the mock element id generator
    late ElementIdGenerator mockElementIdGenerator;

    testWidgets(
      'Should emit correct state when addVariableText is fired.',
      (WidgetTester tester) async {
        TestWidgetsFlutterBinding.ensureInitialized();

        // define the mocks
        mockElementIdGenerator = MockElementIdGenerator();

        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(variableText.id);

        // set the screen size
        tester.binding.window.physicalSizeTestValue = const Size(1366.0, 682.0);
        tester.binding.window.devicePixelRatioTestValue = 1.0;

        // resets the screen to its original size after the test end
        addTearDown(tester.binding.window.clearPhysicalSizeTestValue);

        // create the app widget
        await tester.pumpWidget(
          material.MaterialApp(
            theme: styles.themeData,
            home: BlocProvider<EditorBloc>(
              create: (context) => createEditorBloc(elementIdGenerator: mockElementIdGenerator),
              child: const material.Scaffold(),
            ),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          ),
        );
        await tester.pumpAndSettle();

        // get a context to use with the bloc
        final material.BuildContext context = tester.element(find.byType(material.Scaffold));

        // listen to the bloc stream of states
        final List<EditorState> actualStates = [];
        final Stream<EditorState> blocStream = BlocProvider.of<EditorBloc>(context).stream;
        blocStream.listen(actualStates.add);

        // add the event
        BlocProvider.of<EditorBloc>(context).add(
          EditorEvent.addVariableText(
            initialText: AppLocalizations.of(context)!.generatedTextAppearsHere,
            textDirection: material.Directionality.of(context),
            minWidth: 0.0,
            maxWidth: material.MediaQuery.of(context).size.width,
          ),
        );
        // wait for the event to be processed
        await tester.pumpAndSettle();

        expect(
          actualStates,
          [
            EditorState(
              editor: Editor.fromSet({variableText}),
              draggedElementId: none(),
              dragPosition: none(),
              selectedElementId: none(),
            ),
          ],
        );
      },
    );

    testWidgets(
      'Should save the state after adding the variable text.',
      (WidgetTester tester) async {
        TestWidgetsFlutterBinding.ensureInitialized();

        // define the mocks
        mockElementIdGenerator = MockElementIdGenerator();

        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(variableText.id);

        // set the screen size
        tester.binding.window.physicalSizeTestValue = const Size(1366.0, 682.0);
        tester.binding.window.devicePixelRatioTestValue = 1.0;

        // resets the screen to its original size after the test end
        addTearDown(tester.binding.window.clearPhysicalSizeTestValue);

        // create the app widget
        await tester.pumpWidget(
          material.MaterialApp(
            theme: styles.themeData,
            home: BlocProvider<EditorBloc>(
              create: (context) => createEditorBloc(elementIdGenerator: mockElementIdGenerator),
              child: const material.Scaffold(),
            ),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          ),
        );
        await tester.pumpAndSettle();

        // get a context to use with the bloc
        final material.BuildContext context = tester.element(find.byType(material.Scaffold));

        // listen to the bloc stream of states
        final List<EditorState> actualStates = [];
        final Stream<EditorState> blocStream = BlocProvider.of<EditorBloc>(context).stream;
        blocStream.listen(actualStates.add);

        // add the AddStaticText event
        BlocProvider.of<EditorBloc>(context).add(
          EditorEvent.addVariableText(
            initialText: AppLocalizations.of(context)!.generatedTextAppearsHere,
            textDirection: material.Directionality.of(context),
            minWidth: 0.0,
            maxWidth: material.MediaQuery.of(context).size.width,
          ),
        );
        // wait for the event to be processed
        await tester.pumpAndSettle();

        // add the Undo event
        BlocProvider.of<EditorBloc>(context).add(const EditorEvent.undo());
        // wait for the event to be processed
        await tester.pumpAndSettle();

        // add the Redo event
        BlocProvider.of<EditorBloc>(context).add(const EditorEvent.redo());
        // wait for the event to be processed
        await tester.pumpAndSettle();

        expect(
          actualStates,
          [
            EditorState(
              editor: Editor.fromSet({variableText}),
              draggedElementId: none(),
              dragPosition: none(),
              selectedElementId: none(),
            ),
            EditorState.initial(),
            EditorState(
              editor: Editor.fromSet({variableText}),
              draggedElementId: none(),
              dragPosition: none(),
              selectedElementId: none(),
            ),
          ],
        );
      },
    );
  });

  group('variableTextFileChanged', () {
    // define elements used in tests
    Element variableText = Element(
      rect: const Rect.fromLTRB(0.0, 0.0, 924.0, 33.0),
      properties: ElementProperties.variableTextProperties(
        sourceFilePath: none(),
        placeHolderText: 'Generated text appears here.',
        textStyle: const material.TextStyle(fontSize: 30, color: material.Colors.black),
      ),
      showOrder: 1,
      id: '1',
    );

    // set up the mock element file picker
    late MockFilePicker mockFilePicker;

    blocTest<EditorBloc, EditorState>(
      'Should emit correct state when variable text file changes.',
      setUp: () {
        mockFilePicker = MockFilePicker();
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedTextFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async => some(File('hello.txt')));
      },
      build: () => createEditorBloc(filePicker: mockFilePicker),
      seed: () => EditorState(
        editor: Editor.fromSet({variableText}),
        selectedElementId: some(variableText.id),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) => bloc.add(const EditorEvent.variableTextFileChanged()),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet(
            {
              variableText.copyWith(
                properties: (variableText.properties as VariableTextProperties).copyWith(
                  sourceFilePath: some('hello.txt'),
                  placeHolderText: 'hello.txt',
                ),
              )
            },
          ),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(variableText.id),
        );
        return [expectedState];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should not emit state when no file is chosen.',
      setUp: () {
        mockFilePicker = MockFilePicker();
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedTextFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async => none());
      },
      build: () => createEditorBloc(filePicker: mockFilePicker),
      seed: () => EditorState(
        editor: Editor.fromSet({variableText}),
        selectedElementId: some(variableText.id),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) => bloc.add(const EditorEvent.variableTextFileChanged()),
      expect: () => [],
    );

    blocTest<EditorBloc, EditorState>(
      'Should not emit state when there is no selected element and should throw.',
      setUp: () {
        mockFilePicker = MockFilePicker();
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedTextFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async => some(File('hello.txt')));
      },
      build: () => createEditorBloc(filePicker: mockFilePicker),
      seed: () => EditorState(
        editor: Editor.fromSet({variableText}),
        selectedElementId: none(),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) => bloc.add(const EditorEvent.variableTextFileChanged()),
      expect: () => [],
      errors: () => [const EditorStateError(EditorStateError.noSelectedElement)],
    );

    blocTest<EditorBloc, EditorState>(
        'Should not emit state when selected element is not found in the editor and should throw.',
        setUp: () {
          mockFilePicker = MockFilePicker();
          when(mockFilePicker.pickSingleFile(
                  allowedExtensions:
                      captureThat(equals(allowedTextFilesExtensions.unlock), named: 'allowedExtensions')))
              .thenAnswer((realInvocation) async => some(File('hello.txt')));
        },
        build: () => createEditorBloc(filePicker: mockFilePicker),
        seed: () => EditorState(
              editor: Editor.fromSet({}),
              selectedElementId: some(variableText.id),
              dragPosition: none(),
              draggedElementId: none(),
            ),
        act: (bloc) => bloc.add(const EditorEvent.variableTextFileChanged()),
        expect: () => [],
        errors: () => [const EditorStateError(EditorStateError.selectedElementDoesNotExist)]);

    blocTest<EditorBloc, EditorState>(
      'Should save the state after changing the variable text file.',
      setUp: () {
        mockFilePicker = MockFilePicker();
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedTextFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async => some(File('hello.txt')));
      },
      build: () => createEditorBloc(filePicker: mockFilePicker),
      seed: () => EditorState(
        editor: Editor.fromSet({variableText}),
        selectedElementId: some(variableText.id),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) {
        bloc.add(const EditorEvent.variableTextFileChanged());
        bloc.add(const EditorEvent.undo());
        bloc.add(const EditorEvent.redo());
      },
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet(
            {
              variableText.copyWith(
                properties: (variableText.properties as VariableTextProperties).copyWith(
                  sourceFilePath: some('hello.txt'),
                  placeHolderText: 'hello.txt',
                ),
              ),
            },
          ),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(variableText.id),
        );
        return [
          expectedState,
          EditorState.initial(),
          expectedState.copyWith(selectedElementId: none()),
        ];
      },
    );
  });

  group('variableTextStyleChanged', () {
    // define elements used in tests
    Element variableText = Element(
      rect: const Rect.fromLTRB(0.0, 0.0, 924.0, 33.0),
      properties: ElementProperties.variableTextProperties(
        sourceFilePath: none(),
        placeHolderText: 'Generated text appears here.',
        textStyle: const material.TextStyle(fontSize: 30, color: material.Colors.black),
      ),
      showOrder: 1,
      id: '1',
    );

    blocTest<EditorBloc, EditorState>(
      'Should emit correct state when variable text style changes.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({variableText}),
        selectedElementId: some(variableText.id),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) => bloc.add(EditorEvent.variableTextStyleChanged(
          updatedTextStyle:
              (variableText.properties as VariableTextProperties).textStyle!.copyWith(color: material.Colors.yellow))),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet(
            {
              variableText.copyWith(
                properties: (variableText.properties as VariableTextProperties).copyWith(
                    textStyle: (variableText.properties as VariableTextProperties)
                        .textStyle!
                        .copyWith(color: material.Colors.yellow)),
              ),
            },
          ),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(variableText.id),
        );
        return [expectedState];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should not emit state when there is no selected element and should throw.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({variableText}),
        selectedElementId: none(),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) => bloc.add(EditorEvent.variableTextStyleChanged(
          updatedTextStyle:
              (variableText.properties as VariableTextProperties).textStyle!.copyWith(color: material.Colors.yellow))),
      expect: () => [],
      errors: () => [const EditorStateError(EditorStateError.noSelectedElement)],
    );

    blocTest<EditorBloc, EditorState>(
      'Should not emit state when selected element is not found in the editor and should throw.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.empty(),
        selectedElementId: some(variableText.id),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) => bloc.add(EditorEvent.variableTextStyleChanged(
          updatedTextStyle:
              (variableText.properties as VariableTextProperties).textStyle!.copyWith(color: material.Colors.yellow))),
      expect: () => [],
      errors: () => [const EditorStateError(EditorStateError.selectedElementDoesNotExist)],
    );

    blocTest<EditorBloc, EditorState>(
      'Should save state after changing variable text style.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({variableText}),
        selectedElementId: some(variableText.id),
        dragPosition: none(),
        draggedElementId: none(),
      ),
      act: (bloc) {
        bloc.add(
          EditorEvent.variableTextStyleChanged(
            updatedTextStyle:
                (variableText.properties as VariableTextProperties).textStyle!.copyWith(color: material.Colors.yellow),
          ),
        );
        bloc.add(const EditorEvent.undo());
        bloc.add(const EditorEvent.redo());
      },
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet(
            {
              variableText.copyWith(
                properties: (variableText.properties as VariableTextProperties).copyWith(
                  textStyle: (variableText.properties as VariableTextProperties)
                      .textStyle!
                      .copyWith(color: material.Colors.yellow),
                ),
              )
            },
          ),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(variableText.id),
        );
        return [
          expectedState,
          EditorState.initial(),
          expectedState.copyWith(selectedElementId: none()),
        ];
      },
    );
  });

  group('AddImage', () {
    // define elements used in tests
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    const Element image2 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello_world.jpeg'),
      showOrder: 2,
      id: '2',
    );

    late MockFilePicker mockFilePicker;
    late ElementIdGenerator mockElementIdGenerator;

    blocTest<EditorBloc, EditorState>(
      'Should emit correct state when an image is selected.',
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        mockElementIdGenerator = MockElementIdGenerator();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedImageFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer(
                (realInvocation) async => some(File((image1.properties as FileImageProperties).sourceFilePath)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) => bloc.add(const EditorEvent.addImage()),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: none(),
        );
        return [expectedState];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should mutate only the editor in the state when an image is selected.',
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        mockElementIdGenerator = MockElementIdGenerator();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedImageFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer(
                (realInvocation) async => some(File((image2.properties as FileImageProperties).sourceFilePath)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image2.id);
      },
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) => bloc.add(const EditorEvent.addImage()),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: some(image1.id),
          dragPosition: some(image1.rect.center),
          selectedElementId: some(image1.id),
        );
        return [expectedState];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should not emit state when no image is selected.',
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedImageFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async => none());
      },
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
      ),
      act: (bloc) => bloc.add(const EditorEvent.addImage()),
      expect: () => [],
    );

    blocTest<EditorBloc, EditorState>(
      'Should save the state after an image is selected.',
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        mockElementIdGenerator = MockElementIdGenerator();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedImageFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer(
                (realInvocation) async => some(File((image1.properties as FileImageProperties).sourceFilePath)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        // add image
        bloc.add(const EditorEvent.addImage());
        // undo
        bloc.add(const EditorEvent.undo());
        // redo
        bloc.add(const EditorEvent.redo());
      },
      expect: () {
        return [
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
          EditorState.initial(),
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
        ];
      },
    );
  });

  group('DragStart', () {
    // define elements used in tests
    // image with top-left at (0,0)
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    // image with top-left at (125,125) i.e. at center of image1
    const Element image2 = Element(
      rect: Rect.fromLTWH(125.0, 125.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello_world.jpeg'),
      showOrder: 2,
      id: '2',
    );

    blocTest<EditorBloc, EditorState>(
      'Should emit correct state when there is an element at the drag position.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElementId: none(),
        dragPosition: none(),
        selectedElementId: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(DragStart(image1.rect.center)),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1}),
          draggedElementId: some(image1.id),
          dragPosition: some(image1.rect.center),
          selectedElementId: none(),
        );
        return [expectedState];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should set the dragged element to the one with the largest show order at the drag position.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: none(),
        dragPosition: none(),
        selectedElementId: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(DragStart(image1.rect.center)),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: some(image2.id),
          dragPosition: some(image2.rect.topLeft),
          selectedElementId: none(),
        );
        return [expectedState];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should mutate only draggedElementId and dragPosition in the state when there will be a dragged element.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: none(),
        dragPosition: none(),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(DragStart(image1.rect.center)),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: some(image2.id),
          dragPosition: some(image2.rect.topLeft),
          selectedElementId: some(image1.id),
        );
        return [expectedState];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should emit correct state when there is no element at the drag position.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElementId: none(),
        dragPosition: none(),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const DragStart(Offset(1000, 1000))),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1}),
          draggedElementId: none(),
          dragPosition: some(const Offset(1000, 1000)),
          selectedElementId: some(image1.id),
        );
        return [expectedState];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should not emit state when draggedElementId is not none() and should throw.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: none(),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(DragStart(image2.rect.center)),
      expect: () => [],
      errors: () => [const EditorStateError(EditorStateError.simultaneousDragStart)],
    );
    blocTest<EditorBloc, EditorState>(
      'Should not emit state when dragPosition is not none() and should throw.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: none(),
        dragPosition: some(image1.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(DragStart(image2.rect.center)),
      expect: () => [],
      errors: () => [const EditorStateError(EditorStateError.simultaneousDragStart)],
    );
  });

  group(
    'DragUpdate',
    () {
      // define elements used in tests
      // image with top-left at (0,0)
      const Element image1 = Element(
        rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
        properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
        showOrder: 1,
        id: '1',
      );
      // image with top-left at (125,125) i.e. at center of image1
      const Element image2 = Element(
        rect: Rect.fromLTWH(125.0, 125.0, 250, 250),
        properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello_world.jpeg'),
        showOrder: 2,
        id: '2',
      );

      blocTest<EditorBloc, EditorState>(
        'Should emit correct state when there is a dragged element.',
        seed: () => EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: none(),
        ),
        build: () => createEditorBloc(),
        act: (bloc) {
          // image 2 must be selected as the dragged element
          bloc.add(const DragStart(Offset(125.0, 125.0)));
          bloc.add(const DragUpdate(Offset(10.0, 10.0)));
        },
        expect: () {
          final image2Dragged = image2.copyWith(rect: image2.rect.translate(10.0, 10.0));
          return [
            EditorState(
              editor: Editor.fromSet({image1, image2}),
              draggedElementId: some(image2.id),
              dragPosition: some(image2.rect.topLeft),
              selectedElementId: none(),
            ),
            EditorState(
              editor: Editor.fromSet({image1, image2Dragged}),
              draggedElementId: some(image2Dragged.id),
              dragPosition: some(image2Dragged.rect.topLeft),
              selectedElementId: none(),
            ),
          ];
        },
      );
      blocTest<EditorBloc, EditorState>(
        'Should mutate only dragPosition and editor in the state when there is a dragged element.',
        seed: () => EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(image1.id),
        ),
        build: () => createEditorBloc(),
        act: (bloc) {
          bloc.add(const DragStart(Offset(125.0, 125.0)));
          bloc.add(const DragUpdate(Offset(10, 10)));
        },
        expect: () {
          final image2Dragged = image2.copyWith(rect: image2.rect.translate(10.0, 10.0));
          return [
            EditorState(
              editor: Editor.fromSet({image1, image2}),
              draggedElementId: some(image2.id),
              dragPosition: some(image2.rect.topLeft),
              selectedElementId: some(image1.id),
            ),
            EditorState(
              editor: Editor.fromSet({image1, image2Dragged}),
              draggedElementId: some(image2Dragged.id),
              dragPosition: some(image2Dragged.rect.topLeft),
              selectedElementId: some(image1.id),
            ),
          ];
        },
      );
      blocTest<EditorBloc, EditorState>(
        'should mutate only dragPosition in the state when there is no dragged element.',
        seed: () => EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(image1.id),
        ),
        build: () => createEditorBloc(),
        act: (bloc) {
          bloc.add(const DragStart(Offset(1000, 1000)));
          bloc.add(const DragUpdate(Offset(10, 10)));
        },
        expect: () {
          return [
            EditorState(
              editor: Editor.fromSet({image1, image2}),
              draggedElementId: none(),
              dragPosition: some(const Offset(1000, 1000)),
              selectedElementId: some(image1.id),
            ),
            EditorState(
              editor: Editor.fromSet({image1, image2}),
              draggedElementId: none(),
              dragPosition: some(const Offset(1010, 1010)),
              selectedElementId: some(image1.id),
            ),
          ];
        },
      );
      blocTest<EditorBloc, EditorState>(
        'should not emit state when there is no dragPosition and should throw.',
        seed: () => EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: some(image1.id),
          dragPosition: none(),
          selectedElementId: some(image1.id),
        ),
        build: () => createEditorBloc(),
        act: (bloc) => bloc.add(const DragUpdate(Offset(10, 10))),
        expect: () => [],
        errors: () => [const EditorStateError(EditorStateError.noDragPosition)],
      );
    },
  );
  group('DragEnd', () {
    // define elements used in tests
    // image with top-left at (0,0)
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    // image with top-left at (125,125) i.e. at center of image1
    const Element image2 = Element(
      rect: Rect.fromLTWH(125.0, 125.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello_world.jpeg'),
      showOrder: 2,
      id: '2',
    );

    late MockFilePicker mockFilePicker;
    late ElementIdGenerator mockElementIdGenerator;

    blocTest<EditorBloc, EditorState>(
      'Should clear the dragPosition when there is no dragged element.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: none(),
        dragPosition: some(const Offset(100, 100)),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const DragEnd()),
      expect: () => [
        EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(image1.id),
        ),
      ],
    );

    blocTest<EditorBloc, EditorState>(
      'Should clear clear both the dragPosition and draggedElementId when there is a dragged element.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: some(const Offset(100, 100)),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const DragEnd()),
      expect: () => [
        EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(image1.id),
        ),
      ],
    );
    blocTest<EditorBloc, EditorState>(
      'Should not emit state when there is no dragPosition and should throw',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: none(),
        dragPosition: none(),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const DragEnd()),
      expect: () => [],
      errors: () => [const EditorStateError(EditorStateError.noDragPosition)],
    );

    blocTest<EditorBloc, EditorState>(
      'should save the state if there is dragPosition.',
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        mockElementIdGenerator = MockElementIdGenerator();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedImageFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer(
                (realInvocation) async => some(File((image1.properties as FileImageProperties).sourceFilePath)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        bloc.add(const AddImage());
        bloc.add(const DragStart(Offset(0, 0)));
        bloc.add(const DragUpdate(Offset(10, 10)));
        bloc.add(const DragEnd());
        bloc.add(const Undo());
        bloc.add(const Redo());
      },
      expect: () {
        return [
          // after add event
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
          // after start drag event
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElementId: some(image1.id),
            dragPosition: some(image1.rect.topLeft),
            selectedElementId: none(),
          ),
          // after update drag event
          EditorState(
            editor: Editor.fromSet({image1.copyWith(rect: image1.rect.translate(10, 10))}),
            draggedElementId: some(image1.id),
            dragPosition: some(image1.rect.topLeft.translate(10, 10)),
            selectedElementId: none(),
          ),
          // after drag end event
          EditorState(
            editor: Editor.fromSet({image1.copyWith(rect: image1.rect.translate(10, 10))}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
          // after undo event
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
          // after redo event
          EditorState(
            editor: Editor.fromSet({image1.copyWith(rect: image1.rect.translate(10, 10))}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
        ];
      },
    );
  });
  group('Tap', () {
    // define elements used in tests
    // image with top-left at (0,0)
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    // image with top-left at (125,125) i.e. at center of image1
    const Element image2 = Element(
      rect: Rect.fromLTWH(125.0, 125.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello_world.jpeg'),
      showOrder: 2,
      id: '2',
    );
    blocTest<EditorBloc, EditorState>(
      'Should mutate only selectedElementId when there is a tapped element.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(Tap(image2.rect.center)),
      expect: () => [
        EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: some(image1.id),
          dragPosition: some(image1.rect.center),
          selectedElementId: some(image2.id),
        ),
      ],
    );

    blocTest<EditorBloc, EditorState>(
      'Should select element with largest show order when there is a tapped element.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) {
        // tap on the common area of image1 and image2
        // image2 should be selected since it has the largest show order
        bloc.add(const Tap(Offset(240, 240)));
      },
      expect: () => [
        EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: some(image1.id),
          dragPosition: some(image1.rect.center),
          selectedElementId: some(image2.id),
        ),
      ],
    );
    blocTest<EditorBloc, EditorState>(
      'Should clear selectedElementId when tap is not on an element and selectedElementId is set.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const Tap(Offset(500, 500))),
      expect: () => [
        EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: some(image1.id),
          dragPosition: some(image1.rect.center),
          selectedElementId: none(),
        ),
      ],
    );
    blocTest<EditorBloc, EditorState>(
      'Should not emit state when tap is not on an element and selectedElementId is not set.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const Tap(Offset(500, 500))),
      expect: () => [],
    );
  });

  group('RemoveSelectedElement', () {
    // define elements used in tests
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    const Element image2 = Element(
      rect: Rect.fromLTWH(125.0, 125.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello_world.jpeg'),
      showOrder: 2,
      id: '2',
    );

    late MockFilePicker mockFilePicker;
    late MockElementIdGenerator mockElementIdGenerator;

    blocTest<EditorBloc, EditorState>(
      'Should remove the selected element and clear selection and drag states if there is a selected element.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const RemoveSelectedElement()),
      expect: () => [
        EditorState(
          editor: Editor.fromSet({image2}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: none(),
        ),
      ],
    );

    blocTest<EditorBloc, EditorState>(
      'Should not emit states when there is no selected element.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const RemoveSelectedElement()),
      expect: () => [],
    );

    blocTest<EditorBloc, EditorState>(
      'Should save the state after removing an element.',
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        mockElementIdGenerator = MockElementIdGenerator();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedImageFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer(
                (realInvocation) async => some(File((image1.properties as FileImageProperties).sourceFilePath)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        // add an image element
        bloc.add(const AddImage());
        // tap on the element to select it
        bloc.add(Tap(image1.rect.center));
        // remove the element
        bloc.add(const RemoveSelectedElement());
        // undo
        bloc.add(const Undo());
        // redo
        bloc.add(const Redo());
      },
      expect: () => [
        EditorState(
          editor: Editor.fromSet({image1}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: none(),
        ),
        EditorState(
          editor: Editor.fromSet({image1}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(image1.id),
        ),
        EditorState(
          editor: Editor.empty(),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: none(),
        ),
        EditorState(
          editor: Editor.fromSet({image1}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: none(),
        ),
        EditorState(
          editor: Editor.empty(),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: none(),
        ),
      ],
    );
  });
  group('BringSelectedElementToFront', () {
    // define elements used in tests
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    const Element image2 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello_world.jpeg'),
      showOrder: 2,
      id: '2',
    );

    late MockFilePicker mockFilePicker;
    late MockElementIdGenerator mockElementIdGenerator;

    blocTest<EditorBloc, EditorState>(
      'Should bring the selected element to front (make its show order = current largest + 1) when it exists.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: none(),
        dragPosition: none(),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const BringSelectedElementToFront()),
      expect: () {
        Element image1Updated = image1.copyWith(showOrder: 3);
        return [
          EditorState(
            editor: Editor.fromSet({image2, image1Updated}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: some(image1Updated.id),
          ),
        ];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should not emit states when there is no selected element.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: none(),
        dragPosition: none(),
        selectedElementId: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const BringSelectedElementToFront()),
      expect: () => [],
    );

    blocTest<EditorBloc, EditorState>(
      'Should not emit state when selected element does not exist and should throw.',
      seed: () => EditorState(
        editor: Editor.fromSet({image2}),
        draggedElementId: none(),
        dragPosition: none(),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const BringSelectedElementToFront()),
      expect: () => [],
      errors: () => [const EditorStateError(EditorStateError.selectedElementDoesNotExist)],
    );

    blocTest<EditorBloc, EditorState>(
      'Should save the state after bringing an element to the front.',
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        mockElementIdGenerator = MockElementIdGenerator();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedImageFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer(
                (realInvocation) async => some(File((image2.properties as FileImageProperties).sourceFilePath)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image2.id);
      },
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        dragPosition: none(),
        draggedElementId: none(),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        // add image 2, it will be the one with largest show order
        bloc.add(const AddImage());
        // bring the selected element to front
        bloc.add(const BringSelectedElementToFront());
        // undo
        bloc.add(const Undo());
        // redo
        bloc.add(const Redo());
      },
      expect: () {
        Element image1Updated = image1.copyWith(showOrder: 3);
        return [
          EditorState(
            editor: Editor.fromSet({image1, image2}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: some(image1.id),
          ),
          EditorState(
            editor: Editor.fromSet({image2, image1Updated}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: some(image1.id),
          ),
          EditorState(
            editor: Editor.fromSet({image1, image2}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
          EditorState(
            editor: Editor.fromSet({image2, image1Updated}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
        ];
      },
    );
  });
  group('ClearEditorEvent', () {
    // define elements used in tests

    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );

    late MockFilePicker mockFilePicker;
    late ElementIdGenerator mockElementIdGenerator;

    blocTest<EditorBloc, EditorState>(
      'Should clear editor and clear drag states if it has elements.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ClearEditor()),
      expect: () => [
        EditorState.initial(),
      ],
    );

    blocTest<EditorBloc, EditorState>(
      'Should not emit any state when editor is already empty.',
      seed: () => EditorState.initial(),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ClearEditor()),
      expect: () => [],
    );

    blocTest<EditorBloc, EditorState>(
      'Should save editor state if it has elements',
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        mockElementIdGenerator = MockElementIdGenerator();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(equals(allowedImageFilesExtensions.unlock), named: 'allowedExtensions')))
            .thenAnswer(
                (realInvocation) async => some(File((image1.properties as FileImageProperties).sourceFilePath)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        bloc.add(const AddImage());
        bloc.add(const ClearEditor());
        bloc.add(const Undo());
        bloc.add(const Redo());
      },
      expect: () => [
        EditorState(
          editor: Editor.fromSet({image1}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: none(),
        ),
        EditorState.initial(),
        EditorState(
          editor: Editor.fromSet({image1}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: none(),
        ),
        EditorState.initial(),
      ],
    );
  });
}
