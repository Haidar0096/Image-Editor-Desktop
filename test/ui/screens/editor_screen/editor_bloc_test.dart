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
import 'package:photo_editor/ui/common/error/invalid_state_error.dart';
import 'package:photo_editor/ui/common/styles/styles.dart' as styles;
import 'package:photo_editor/ui/common/widgets/manipulating_balls_widget.dart';
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
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: none(),
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
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
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
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
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
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
          ),
          EditorState.initial(),
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
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
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
          ),
          EditorState.initial(),
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
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
      rect: Rect.fromLTRB(0.0, 0.0, 1353.0, 33.0),
      properties: ElementProperties.staticTextProperties(
          text: 'Type the text here (Double tap to start):',
          textStyle: material.TextStyle(fontSize: 30, color: material.Colors.black)),
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
              draggedElement: none(),
              dragPosition: none(),
              selectedElement: none(),
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
              draggedElement: none(),
              dragPosition: none(),
              selectedElement: none(),
            ),
            EditorState.initial(),
            EditorState(
              editor: Editor.fromSet({staticText}),
              draggedElement: none(),
              dragPosition: none(),
              selectedElement: none(),
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
        selectedElement: some(staticText),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) => bloc.add(const EditorEvent.staticTextChanged(updatedText: 'Hello World')),
      expect: () {
        final Element updatedStaticText = staticText.copyWith(
            properties: (staticText.properties as StaticTextProperties).copyWith(text: 'Hello World'));
        final expectedState = EditorState(
          editor: Editor.fromSet({updatedStaticText}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedStaticText),
        );
        return [expectedState];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should save the state after changing the static text.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        selectedElement: some(staticText),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) {
        bloc.add(const EditorEvent.staticTextChanged(updatedText: 'Hello World'));
        bloc.add(const EditorEvent.undo());
        bloc.add(const EditorEvent.redo());
      },
      expect: () {
        final Element updatedStaticText = staticText.copyWith(
            properties: (staticText.properties as StaticTextProperties).copyWith(text: 'Hello World'));
        final expectedState = EditorState(
          editor: Editor.fromSet({updatedStaticText}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedStaticText),
        );
        return [
          expectedState,
          EditorState.initial(),
          expectedState.copyWith(selectedElement: none()),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>('Should not emit states when no element is selected and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({staticText}),
              selectedElement: none(),
              dragPosition: none(),
              draggedElement: none(),
            ),
        act: (bloc) => bloc.add(const EditorEvent.staticTextChanged(updatedText: 'Hello World')),
        expect: () => [],
        errors: () => [const InvalidStateError(message: "StaticTextChanged was fired but no element was selected")]);
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
        selectedElement: some(staticText),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) => bloc.add(EditorEvent.staticTextStyleChanged(
          updatedTextStyle:
              (staticText.properties as StaticTextProperties).textStyle!.copyWith(color: material.Colors.yellow))),
      expect: () {
        final Element updatedStaticText = staticText.copyWith(
          properties: (staticText.properties as StaticTextProperties).copyWith(
            textStyle:
                (staticText.properties as StaticTextProperties).textStyle!.copyWith(color: material.Colors.yellow),
          ),
        );
        final expectedState = EditorState(
          editor: Editor.fromSet({updatedStaticText}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedStaticText),
        );
        return [expectedState];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should validate the fontSize when static text style changes.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        selectedElement: some(staticText),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) {
        // Ok
        bloc.add(EditorEvent.staticTextStyleChanged(
            updatedTextStyle: (staticText.properties as StaticTextProperties).textStyle!.copyWith(fontSize: 10)));
        // Ok
        bloc.add(EditorEvent.staticTextStyleChanged(
            updatedTextStyle: (staticText.properties as StaticTextProperties).textStyle!.copyWith(fontSize: 0)));
        // Should not change the style, font negative
        bloc.add(EditorEvent.staticTextStyleChanged(
            updatedTextStyle: (staticText.properties as StaticTextProperties).textStyle!.copyWith(fontSize: -1)));
        // Should not change the style, font infinite
        bloc.add(EditorEvent.staticTextStyleChanged(
            updatedTextStyle:
                (staticText.properties as StaticTextProperties).textStyle!.copyWith(fontSize: double.infinity)));
      },
      expect: () {
        final Element updatedStaticText1 = staticText.copyWith(
          properties: (staticText.properties as StaticTextProperties).copyWith(
            textStyle: (staticText.properties as StaticTextProperties).textStyle!.copyWith(fontSize: 10),
          ),
        );
        final Element updatedStaticText2 = staticText.copyWith(
          properties: (staticText.properties as StaticTextProperties).copyWith(
            textStyle: (staticText.properties as StaticTextProperties).textStyle!.copyWith(fontSize: 0),
          ),
        );
        final expectedState1 = EditorState(
          editor: Editor.fromSet({updatedStaticText1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedStaticText1),
        );
        final expectedState2 = EditorState(
          editor: Editor.fromSet({updatedStaticText2}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedStaticText2),
        );
        return [expectedState1, expectedState2];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should save state after changing static text style.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        selectedElement: some(staticText),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) {
        bloc.add(EditorEvent.staticTextStyleChanged(
            updatedTextStyle:
                (staticText.properties as StaticTextProperties).textStyle!.copyWith(color: material.Colors.yellow)));
        bloc.add(const EditorEvent.undo());
        bloc.add(const EditorEvent.redo());
      },
      expect: () {
        final Element updatedStaticText = staticText.copyWith(
          properties: (staticText.properties as StaticTextProperties).copyWith(
            textStyle:
                (staticText.properties as StaticTextProperties).textStyle!.copyWith(color: material.Colors.yellow),
          ),
        );
        final expectedState = EditorState(
          editor: Editor.fromSet({updatedStaticText}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedStaticText),
        );
        return [
          expectedState,
          EditorState.initial(),
          expectedState.copyWith(selectedElement: none()),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>('Should not emit states when no element is selected and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({staticText}),
              selectedElement: none(),
              dragPosition: none(),
              draggedElement: none(),
            ),
        act: (bloc) => bloc.add(EditorEvent.staticTextStyleChanged(
            updatedTextStyle:
                (staticText.properties as StaticTextProperties).textStyle!.copyWith(color: material.Colors.yellow))),
        expect: () => [],
        errors: () =>
            [const InvalidStateError(message: "StaticTextStyleChanged was fired but no element was selected")]);
  });

  group('staticTextAlignChanged', () {
    // define elements used in tests
    const Element staticText = Element(
      rect: Rect.fromLTRB(0.0, 0.0, 627.0, 33.0),
      properties: ElementProperties.staticTextProperties(
          text: 'Type the text here:', textStyle: material.TextStyle(fontSize: 30, color: material.Colors.black)),
      showOrder: 1,
      id: '1',
    );

    blocTest<EditorBloc, EditorState>(
      'Should emit correct state when static text align changes.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        selectedElement: some(staticText),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) => bloc.add(const EditorEvent.staticTextAlignChanged(updatedTextAlign: material.TextAlign.end)),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet(
            {
              staticText.copyWith(
                properties: (staticText.properties as StaticTextProperties).copyWith(textAlign: material.TextAlign.end),
              )
            },
          ),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(staticText),
        );
        return [expectedState];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should save state after changing static text align.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        selectedElement: some(staticText),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) {
        bloc.add(const EditorEvent.staticTextAlignChanged(updatedTextAlign: material.TextAlign.end));
        bloc.add(const EditorEvent.undo());
        bloc.add(const EditorEvent.redo());
      },
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet(
            {
              staticText.copyWith(
                  properties:
                      (staticText.properties as StaticTextProperties).copyWith(textAlign: material.TextAlign.end))
            },
          ),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(staticText),
        );
        return [
          expectedState,
          EditorState.initial(),
          expectedState.copyWith(selectedElement: none()),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>('Should not emit states when no element is selected and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({staticText}),
              selectedElement: none(),
              dragPosition: none(),
              draggedElement: none(),
            ),
        act: (bloc) => bloc.add(const EditorEvent.staticTextAlignChanged(updatedTextAlign: material.TextAlign.end)),
        expect: () => [],
        errors: () =>
            [const InvalidStateError(message: "StaticTextAlignChanged was fired but no element was selected")]);
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
              draggedElement: none(),
              dragPosition: none(),
              selectedElement: none(),
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
              draggedElement: none(),
              dragPosition: none(),
              selectedElement: none(),
            ),
            EditorState.initial(),
            EditorState(
              editor: Editor.fromSet({variableText}),
              draggedElement: none(),
              dragPosition: none(),
              selectedElement: none(),
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
        selectedElement: some(variableText),
        dragPosition: none(),
        draggedElement: none(),
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
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(variableText),
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
        selectedElement: some(variableText),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) => bloc.add(const EditorEvent.variableTextFileChanged()),
      expect: () => [],
    );

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
        selectedElement: some(variableText),
        dragPosition: none(),
        draggedElement: none(),
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
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(variableText),
        );
        return [
          expectedState,
          EditorState.initial(),
          expectedState.copyWith(selectedElement: none()),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>('Should not emit states when no element is selected and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({variableText}),
              selectedElement: none(),
              dragPosition: none(),
              draggedElement: none(),
            ),
        act: (bloc) => bloc.add(const EditorEvent.variableTextFileChanged()),
        expect: () => [],
        errors: () =>
            [const InvalidStateError(message: "VariableTextFileChanged was fired but no element was selected")]);
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
        selectedElement: some(variableText),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) => bloc.add(EditorEvent.variableTextStyleChanged(
          updatedTextStyle:
              (variableText.properties as VariableTextProperties).textStyle!.copyWith(color: material.Colors.yellow))),
      expect: () {
        final Element updatedVariableText = variableText.copyWith(
          properties: (variableText.properties as VariableTextProperties).copyWith(
              textStyle: (variableText.properties as VariableTextProperties)
                  .textStyle!
                  .copyWith(color: material.Colors.yellow)),
        );
        final expectedState = EditorState(
          editor: Editor.fromSet({updatedVariableText}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedVariableText),
        );
        return [expectedState];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should validate the fontSize when variable text style changes.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({variableText}),
        selectedElement: some(variableText),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) {
        // Ok
        bloc.add(EditorEvent.variableTextStyleChanged(
            updatedTextStyle: (variableText.properties as VariableTextProperties).textStyle!.copyWith(fontSize: 10)));
        // Ok
        bloc.add(EditorEvent.variableTextStyleChanged(
            updatedTextStyle: (variableText.properties as VariableTextProperties).textStyle!.copyWith(fontSize: 0)));
        // Should not change the style, font negative
        bloc.add(EditorEvent.variableTextStyleChanged(
            updatedTextStyle: (variableText.properties as VariableTextProperties).textStyle!.copyWith(fontSize: -1)));
        // Should not change the style, font infinite
        bloc.add(EditorEvent.variableTextStyleChanged(
            updatedTextStyle:
                (variableText.properties as VariableTextProperties).textStyle!.copyWith(fontSize: double.infinity)));
      },
      expect: () {
        final Element updatedVariableText1 = variableText.copyWith(
          properties: (variableText.properties as VariableTextProperties).copyWith(
            textStyle: (variableText.properties as VariableTextProperties).textStyle!.copyWith(fontSize: 10),
          ),
        );
        final Element updatedVariableText2 = variableText.copyWith(
          properties: (variableText.properties as VariableTextProperties).copyWith(
            textStyle: (variableText.properties as VariableTextProperties).textStyle!.copyWith(fontSize: 0),
          ),
        );
        final expectedState1 = EditorState(
          editor: Editor.fromSet({updatedVariableText1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedVariableText1),
        );
        final expectedState2 = EditorState(
          editor: Editor.fromSet({updatedVariableText2}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedVariableText2),
        );
        return [expectedState1, expectedState2];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should save state after changing variable text style.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({variableText}),
        selectedElement: some(variableText),
        dragPosition: none(),
        draggedElement: none(),
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
        final Element updatedVariableText = variableText.copyWith(
          properties: (variableText.properties as VariableTextProperties).copyWith(
            textStyle:
                (variableText.properties as VariableTextProperties).textStyle!.copyWith(color: material.Colors.yellow),
          ),
        );
        final expectedState = EditorState(
          editor: Editor.fromSet({updatedVariableText}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedVariableText),
        );
        return [
          expectedState,
          EditorState.initial(),
          expectedState.copyWith(selectedElement: none()),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>('Should not emit states when no element is selected and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({variableText}),
              selectedElement: none(),
              dragPosition: none(),
              draggedElement: none(),
            ),
        act: (bloc) => bloc.add(
              EditorEvent.variableTextStyleChanged(
                updatedTextStyle: (variableText.properties as VariableTextProperties)
                    .textStyle!
                    .copyWith(color: material.Colors.yellow),
              ),
            ),
        expect: () => [],
        errors: () =>
            [const InvalidStateError(message: "VariableTextStyleChanged was fired but no element was selected")]);
  });

  group('variableTextAlignChanged', () {
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
      'Should emit correct state when variable text align changes.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({variableText}),
        selectedElement: some(variableText),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) => bloc.add(const EditorEvent.variableTextAlignChanged(updatedTextAlign: material.TextAlign.end)),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet(
            {
              variableText.copyWith(
                  properties:
                      (variableText.properties as VariableTextProperties).copyWith(textAlign: material.TextAlign.end)),
            },
          ),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(variableText),
        );
        return [expectedState];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should save state after changing variable text align.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({variableText}),
        selectedElement: some(variableText),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) {
        bloc.add(const EditorEvent.variableTextAlignChanged(
          updatedTextAlign: material.TextAlign.end,
        ));
        bloc.add(const EditorEvent.undo());
        bloc.add(const EditorEvent.redo());
      },
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet(
            {
              variableText.copyWith(
                  properties:
                      (variableText.properties as VariableTextProperties).copyWith(textAlign: material.TextAlign.end))
            },
          ),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(variableText),
        );
        return [
          expectedState,
          EditorState.initial(),
          expectedState.copyWith(selectedElement: none()),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>('Should not emit states when no element is selected and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({variableText}),
              selectedElement: none(),
              dragPosition: none(),
              draggedElement: none(),
            ),
        act: (bloc) => bloc.add(const EditorEvent.variableTextAlignChanged(
              updatedTextAlign: material.TextAlign.end,
            )),
        expect: () => [],
        errors: () =>
            [const InvalidStateError(message: "VariableTextAlignChanged was fired but no element was selected")]);
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
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: none(),
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
        draggedElement: some(image1),
        dragPosition: some(image1.rect.center),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) => bloc.add(const EditorEvent.addImage()),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElement: some(image1),
          dragPosition: some(image1.rect.center),
          selectedElement: some(image1),
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
        draggedElement: some(image1),
        dragPosition: some(image1.rect.center),
        selectedElement: some(image1),
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
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
          ),
          EditorState.initial(),
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
          ),
        ];
      },
    );
  });

  group('CanvasDragStart', () {
    blocTest<EditorBloc, EditorState>(
      'Should update the drag position when fired.',
      seed: () => EditorState(
        editor: Editor.fromSet({}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const CanvasDragStart(Offset(10, 10))),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({}),
          draggedElement: none(),
          dragPosition: some(const Offset(10, 10)),
          selectedElement: none(),
        );
        return [expectedState];
      },
    );
  });

  group('CanvasDragUpdate', () {
    blocTest<EditorBloc, EditorState>(
      'Should update the drag position when fired.',
      seed: () => EditorState(
        editor: Editor.fromSet({}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) {
        bloc.add(const CanvasDragStart(Offset(125.0, 125.0)));
        bloc.add(const CanvasDragUpdate(Offset(10.0, 10.0)));
      },
      expect: () {
        return [
          EditorState(
            editor: Editor.fromSet({}),
            draggedElement: none(),
            dragPosition: some(const Offset(125, 125)),
            selectedElement: none(),
          ),
          EditorState(
            editor: Editor.fromSet({}),
            draggedElement: none(),
            dragPosition: some(const Offset(135, 135)),
            selectedElement: none(),
          ),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>('Should not emit states when no dragPosition is set and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({}),
              selectedElement: none(),
              dragPosition: none(),
              draggedElement: none(),
            ),
        act: (bloc) => bloc.add(const CanvasDragUpdate(Offset(10.0, 10.0))),
        expect: () => [],
        errors: () => [const InvalidStateError(message: "CanvasDragUpdate was fired but no dragPosition was set")]);
  });
  group('CanvasDragEnd', () {
    blocTest<EditorBloc, EditorState>(
      'Should clear the dragPosition when this event is fired.',
      seed: () => EditorState(
        editor: Editor.fromSet({}),
        draggedElement: none(),
        dragPosition: some(const Offset(100, 100)),
        selectedElement: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const CanvasDragEnd()),
      expect: () => [
        EditorState(
          editor: Editor.fromSet({}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: none(),
        ),
      ],
    );
  });
  group('CanvasTap', () {
    // static text element
    const Element staticText = Element(
      rect: Rect.fromLTRB(0.0, 0.0, 627.0, 33.0),
      properties: ElementProperties.staticTextProperties(
          text: 'Type the text here:', textStyle: material.TextStyle(fontSize: 30, color: material.Colors.black)),
      showOrder: 2,
      id: '2',
    );
    blocTest<EditorBloc, EditorState>(
      'Should clear the selected element.',
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(staticText),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const CanvasTap()),
      expect: () => [
        EditorState(
          editor: Editor.fromSet({staticText}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: none(),
        ),
      ],
    );
    blocTest<EditorBloc, EditorState>(
      'Should delete the selected element if its an empty text and save the state.',
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(staticText),
      ),
      build: () => createEditorBloc(),
      act: (bloc) {
        bloc.add(const StaticTextChanged(updatedText: 'abc'));
        bloc.add(const StaticTextChanged(updatedText: ''));
        bloc.add(const CanvasTap());
        bloc.add(const Undo());
        bloc.add(const Redo());
      },
      expect: () {
        final Element updatedStaticText1 =
            staticText.copyWith(properties: (staticText.properties as StaticTextProperties).copyWith(text: 'abc'));
        final Element updatedStaticText2 =
            staticText.copyWith(properties: (staticText.properties as StaticTextProperties).copyWith(text: ''));
        final EditorState expectedState1 = EditorState(
          editor: Editor.fromSet({updatedStaticText1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedStaticText1),
        );
        final EditorState expectedState2 = expectedState1.copyWith(
          editor: Editor.fromSet({updatedStaticText2}),
          selectedElement: some(updatedStaticText2),
        );
        return [
          expectedState1,
          expectedState2,
          EditorState.initial(),
          expectedState2.copyWith(selectedElement: none()),
          EditorState.initial(),
        ];
      },
    );
  });

  group('ElementDragStart', () {
    // define elements used in tests
    // image with top-left at (0,0)
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );

    blocTest<EditorBloc, EditorState>(
      'Should update selected element and drag position when fired.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(ElementDragStart(image1, image1.rect.center)),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1}),
          draggedElement: some(image1),
          dragPosition: some(image1.rect.center),
          selectedElement: none(),
        );
        return [expectedState];
      },
    );
  });

  group(
    'ElementDragUpdate',
    () {
      // define elements used in tests
      // image with top-left at (0,0)
      const Element image1 = Element(
        rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
        properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
        showOrder: 1,
        id: '1',
      );

      blocTest<EditorBloc, EditorState>(
        'Should update the drag position and the position of the dragged element when fired.',
        seed: () => EditorState(
          editor: Editor.fromSet({image1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: none(),
        ),
        build: () => createEditorBloc(),
        act: (bloc) {
          // image 2 must be selected as the dragged element
          bloc.add(const ElementDragStart(image1, Offset(125.0, 125.0)));
          bloc.add(const ElementDragUpdate(Offset(10.0, 10.0)));
        },
        expect: () {
          final Element image1Updated = image1.copyWith(
            rect: Rect.fromLTWH(
              image1.rect.left + 10.0,
              image1.rect.top + 10.0,
              image1.rect.width,
              image1.rect.height,
            ),
          );
          return [
            EditorState(
              editor: Editor.fromSet({image1}),
              draggedElement: some(image1),
              dragPosition: some(const Offset(125, 125)),
              selectedElement: none(),
            ),
            EditorState(
              editor: Editor.fromSet({image1Updated}),
              draggedElement: some(image1),
              dragPosition: some(const Offset(135, 135)),
              selectedElement: none(),
            ),
          ];
        },
      );
      blocTest<EditorBloc, EditorState>('Should not emit states when no draggedElement is set and should throw.',
          build: () => createEditorBloc(),
          seed: () => EditorState(
                editor: Editor.fromSet({image1}),
                selectedElement: none(),
                dragPosition: some(const Offset(125, 125)),
                draggedElement: none(),
              ),
          act: (bloc) => bloc.add(const ElementDragUpdate(Offset(10.0, 10.0))),
          expect: () => [],
          errors: () => [
                const InvalidStateError(
                    message: "ElementDragUpdate was fired but no dragPosition or no draggedElement was set")
              ]);
      blocTest<EditorBloc, EditorState>('Should not emit states when no dragPosition is set and should throw.',
          build: () => createEditorBloc(),
          seed: () => EditorState(
                editor: Editor.fromSet({image1}),
                selectedElement: none(),
                dragPosition: none(),
                draggedElement: some(image1),
              ),
          act: (bloc) => bloc.add(const ElementDragUpdate(Offset(10.0, 10.0))),
          expect: () => [],
          errors: () => [
                const InvalidStateError(
                    message: "ElementDragUpdate was fired but no dragPosition or no draggedElement was set")
              ]);
    },
  );

  group('ElementDragEnd', () {
    // define elements used in tests
    // image with top-left at (0,0)
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );

    late MockFilePicker mockFilePicker;
    late ElementIdGenerator mockElementIdGenerator;

    blocTest<EditorBloc, EditorState>(
      'Should clear the dragPosition and draggedElementId when this event is fired.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: some(image1),
        dragPosition: some(const Offset(100, 100)),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ElementDragEnd()),
      expect: () => [
        EditorState(
          editor: Editor.fromSet({image1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(image1),
        ),
      ],
    );

    blocTest<EditorBloc, EditorState>(
      'should save the state when fired.',
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
        bloc.add(ElementDragStart(image1, image1.rect.center));
        bloc.add(const ElementDragUpdate(Offset(10, 10)));
        bloc.add(const ElementDragEnd());
        bloc.add(const Undo());
        bloc.add(const Redo());
      },
      expect: () {
        return [
          // after add event
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
          ),
          // after start drag event
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElement: some(image1),
            dragPosition: some(image1.rect.center),
            selectedElement: none(),
          ),
          // after update drag event
          EditorState(
            editor: Editor.fromSet({image1.copyWith(rect: image1.rect.translate(10, 10))}),
            draggedElement: some(image1),
            dragPosition: some(image1.rect.center.translate(10, 10)),
            selectedElement: none(),
          ),
          // after drag end event
          EditorState(
            editor: Editor.fromSet({image1.copyWith(rect: image1.rect.translate(10, 10))}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
          ),
          // after undo event
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
          ),
          // after redo event
          EditorState(
            editor: Editor.fromSet({image1.copyWith(rect: image1.rect.translate(10, 10))}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
          ),
        ];
      },
    );
  });

  group('ElementTap', () {
    // define elements used in tests
    // image with top-left at (0,0)
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    blocTest<EditorBloc, EditorState>(
      'Should select the tapped element.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ElementTap(image1)),
      expect: () => [
        EditorState(
          editor: Editor.fromSet({image1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(image1),
        ),
      ],
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
        draggedElement: some(image1),
        dragPosition: some(image1.rect.center),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const RemoveSelectedElement()),
      expect: () => [
        EditorState(
          editor: Editor.fromSet({image2}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: none(),
        ),
      ],
    );

    blocTest<EditorBloc, EditorState>('Should not emit states and should throw when there is no selected element.',
        seed: () => EditorState(
              editor: Editor.fromSet({image1, image2}),
              draggedElement: some(image1),
              dragPosition: some(image1.rect.center),
              selectedElement: none(),
            ),
        build: () => createEditorBloc(),
        act: (bloc) => bloc.add(const RemoveSelectedElement()),
        expect: () => [],
        errors: () =>
            [const InvalidStateError(message: "RemoveSelectedElement was fired but no selectedElement was set")]);

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
        bloc.add(const ElementTap(image1));
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
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: none(),
        ),
        EditorState(
          editor: Editor.fromSet({image1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(image1),
        ),
        EditorState(
          editor: Editor.empty(),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: none(),
        ),
        EditorState(
          editor: Editor.fromSet({image1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: none(),
        ),
        EditorState(
          editor: Editor.empty(),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: none(),
        ),
      ],
    );
    blocTest<EditorBloc, EditorState>('Should not emit states when no selectedElement is set and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({image1}),
              selectedElement: none(),
              dragPosition: none(),
              draggedElement: none(),
            ),
        act: (bloc) => bloc.add(const RemoveSelectedElement()),
        expect: () => [],
        errors: () =>
            [const InvalidStateError(message: "RemoveSelectedElement was fired but no selectedElement was set")]);
  });

  group('DeselectElement', () {
    // define elements used in tests
    // image with top-left at (0,0)
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    // static text element
    const Element staticText = Element(
      rect: Rect.fromLTRB(0.0, 0.0, 627.0, 33.0),
      properties: ElementProperties.staticTextProperties(
          text: 'Type the text here:', textStyle: material.TextStyle(fontSize: 30, color: material.Colors.black)),
      showOrder: 2,
      id: '2',
    );
    blocTest<EditorBloc, EditorState>(
      'Should deselect the selected element.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const DeselectElement()),
      expect: () => [
        EditorState(
          editor: Editor.fromSet({image1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: none(),
        ),
      ],
    );

    blocTest<EditorBloc, EditorState>(
      'Should delete the selected element if its an empty text and save the state.',
      seed: () => EditorState(
        editor: Editor.fromSet({staticText}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(staticText),
      ),
      build: () => createEditorBloc(),
      act: (bloc) {
        bloc.add(const StaticTextChanged(updatedText: 'abc'));
        bloc.add(const StaticTextChanged(updatedText: ''));
        bloc.add(const DeselectElement());
        bloc.add(const Undo());
        bloc.add(const Redo());
      },
      expect: () {
        final Element updatedStaticText1 =
            staticText.copyWith(properties: (staticText.properties as StaticTextProperties).copyWith(text: 'abc'));
        final Element updatedStaticText2 =
            staticText.copyWith(properties: (staticText.properties as StaticTextProperties).copyWith(text: ''));

        final EditorState expectedState1 = EditorState(
          editor: Editor.fromSet({updatedStaticText1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedStaticText1),
        );
        final EditorState expectedState2 = expectedState1.copyWith(
          editor: Editor.fromSet({updatedStaticText2}),
          selectedElement: some(updatedStaticText2),
        );
        return [
          expectedState1,
          expectedState2,
          EditorState.initial(),
          expectedState2.copyWith(selectedElement: none()),
          EditorState.initial(),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>('Should not emit states when no selectedElement is set and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({image1}),
              selectedElement: none(),
              dragPosition: none(),
              draggedElement: none(),
            ),
        act: (bloc) => bloc.add(const DeselectElement()),
        expect: () => [],
        errors: () => [const InvalidStateError(message: "DeselectElement was fired but no selectedElement was set")]);
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
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const BringSelectedElementToFront()),
      expect: () {
        Element image1Updated = image1.copyWith(showOrder: 3);
        return [
          EditorState(
            editor: Editor.fromSet({image2, image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1Updated),
          ),
        ];
      },
    );

    blocTest<EditorBloc, EditorState>('Should not emit states and should throw when there is no selected element.',
        seed: () => EditorState(
              editor: Editor.fromSet({image1, image2}),
              draggedElement: none(),
              dragPosition: none(),
              selectedElement: none(),
            ),
        build: () => createEditorBloc(),
        act: (bloc) => bloc.add(const BringSelectedElementToFront()),
        expect: () => [],
        errors: () =>
            [const InvalidStateError(message: "BringSelectedElementToFront was fired but no selectedElement was set")]);

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
        draggedElement: none(),
        selectedElement: some(image1),
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
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1),
          ),
          EditorState(
            editor: Editor.fromSet({image2, image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1Updated),
          ),
          EditorState(
            editor: Editor.fromSet({image1, image2}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
          ),
          EditorState(
            editor: Editor.fromSet({image2, image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
          ),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>('Should not emit states when no selectedElement is set and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({image1}),
              selectedElement: none(),
              dragPosition: none(),
              draggedElement: none(),
            ),
        act: (bloc) => bloc.add(const BringSelectedElementToFront()),
        expect: () => [],
        errors: () =>
            [const InvalidStateError(message: "BringSelectedElementToFront was fired but no selectedElement was set")]);
  });
  group('ResizeUpdate', () {
    // define elements used in tests
    // image with top-left at (0,0)
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    blocTest<EditorBloc, EditorState>(
      'Should update the element correctly when resized to the top-left direction.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ResizeUpdate(ResizeDirection.topLeft, Offset(100, 100))),
      expect: () {
        final Element image1Updated =
            image1.copyWith(rect: Rect.fromPoints(image1.rect.bottomRight, image1.rect.topLeft.translate(100, 100)));
        return [
          EditorState(
            editor: Editor.fromSet({image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1Updated),
          ),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should update the element correctly when resized to the top-center direction.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ResizeUpdate(ResizeDirection.topCenter, Offset(100, 100))),
      expect: () {
        final Element image1Updated =
            image1.copyWith(rect: Rect.fromPoints(image1.rect.bottomLeft, image1.rect.topRight.translate(0, 100)));
        return [
          EditorState(
            editor: Editor.fromSet({image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1Updated),
          ),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should update the element correctly when resized to the top-right direction.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ResizeUpdate(ResizeDirection.topRight, Offset(100, 100))),
      expect: () {
        final Element image1Updated =
            image1.copyWith(rect: Rect.fromPoints(image1.rect.bottomLeft, image1.rect.topRight.translate(100, 100)));
        return [
          EditorState(
            editor: Editor.fromSet({image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1Updated),
          ),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should update the element correctly when resized to the center-right direction.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ResizeUpdate(ResizeDirection.centerRight, Offset(100, 100))),
      expect: () {
        final Element image1Updated = image1.copyWith(
            rect: Rect.fromLTWH(image1.rect.left, image1.rect.top, image1.rect.width + 100, image1.rect.height));
        return [
          EditorState(
            editor: Editor.fromSet({image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1Updated),
          ),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should update the element correctly when resized to the bottom-right direction.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ResizeUpdate(ResizeDirection.bottomRight, Offset(100, 100))),
      expect: () {
        final Element image1Updated =
            image1.copyWith(rect: Rect.fromPoints(image1.rect.topLeft, image1.rect.bottomRight.translate(100, 100)));
        return [
          EditorState(
            editor: Editor.fromSet({image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1Updated),
          ),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should update the element correctly when resized to the bottom-center direction.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ResizeUpdate(ResizeDirection.bottomCenter, Offset(100, 100))),
      expect: () {
        final Element image1Updated =
            image1.copyWith(rect: Rect.fromPoints(image1.rect.topLeft, image1.rect.bottomRight.translate(0, 100)));
        return [
          EditorState(
            editor: Editor.fromSet({image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1Updated),
          ),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should update the element correctly when resized to the bottom-left direction.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ResizeUpdate(ResizeDirection.bottomLeft, Offset(100, 100))),
      expect: () {
        final Element image1Updated =
            image1.copyWith(rect: Rect.fromPoints(image1.rect.bottomLeft.translate(100, 100), image1.rect.topRight));
        return [
          EditorState(
            editor: Editor.fromSet({image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1Updated),
          ),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should update the element correctly when resized to the center-left direction.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ResizeUpdate(ResizeDirection.centerLeft, Offset(100, 100))),
      expect: () {
        final Element image1Updated =
            image1.copyWith(rect: Rect.fromPoints(image1.rect.bottomLeft.translate(100, 0), image1.rect.topRight));
        return [
          EditorState(
            editor: Editor.fromSet({image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1Updated),
          ),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should respect the minimum width when resizing.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ResizeUpdate(ResizeDirection.centerRight, Offset(-245, 0))),
      expect: () {
        final Element image1Updated = image1.copyWith(rect: const Rect.fromLTWH(0, 0, 30, 250));
        return [
          EditorState(
            editor: Editor.fromSet({image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1Updated),
          ),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should respect the minimum height when resizing.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElement: none(),
        dragPosition: none(),
        selectedElement: some(image1),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ResizeUpdate(ResizeDirection.bottomCenter, Offset(0, -245))),
      expect: () {
        final Element image1Updated = image1.copyWith(rect: const Rect.fromLTWH(0, 0, 250, 30));
        return [
          EditorState(
            editor: Editor.fromSet({image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1Updated),
          ),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>('Should not emit states when no selectedElement is set and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({image1}),
              selectedElement: none(),
              dragPosition: none(),
              draggedElement: none(),
            ),
        act: (bloc) => bloc.add(const ResizeUpdate(ResizeDirection.centerRight, Offset(-245, 0))),
        expect: () => [],
        errors: () => [const InvalidStateError(message: "ResizeUpdate was fired but no selectedElement was set")]);
  });
  group('ResizeEnd', () {
    // define elements used in tests
    // image with top-left at (0,0)
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );

    late MockFilePicker mockFilePicker;
    late ElementIdGenerator mockElementIdGenerator;

    blocTest<EditorBloc, EditorState>(
      'should save the state when resize ends.',
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
        bloc.add(const ElementTap(image1));
        bloc.add(const ResizeUpdate(ResizeDirection.topLeft, Offset(10, 10)));
        bloc.add(const ResizeEnd());
        bloc.add(const Undo());
        bloc.add(const Redo());
      },
      expect: () {
        final Element image1Updated =
            image1.copyWith(rect: Rect.fromPoints(image1.rect.bottomRight, image1.rect.topLeft.translate(10, 10)));
        return [
          // after add event
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
          ),
          // after element tap event
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1),
          ),
          // after resize event
          EditorState(
            editor: Editor.fromSet({image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(image1Updated),
          ),
          // after resize end event, no state will be emitted since the state doesn't change, it is only saved to the timeline
          // after undo event
          EditorState(
            editor: Editor.fromSet({image1}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
          ),
          // after redo event
          EditorState(
            editor: Editor.fromSet({image1Updated}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: none(),
          ),
        ];
      },
    );
  });
  group('selectedElementSizeChanged', () {
    // define elements used in tests
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 200, 200),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );

    blocTest<EditorBloc, EditorState>(
      'Should emit correct state when fired.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        selectedElement: some(image1),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) => bloc.add(const EditorEvent.selectedElementSizeChanged(Size(100, 100))),
      expect: () {
        final Element updatedImage1 =
            image1.copyWith(rect: Rect.fromCenter(center: const Offset(100, 100), width: 100, height: 100));
        final expectedState = EditorState(
          editor: Editor.fromSet({updatedImage1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedImage1),
        );
        return [expectedState];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should not change the size if it is out of the pre-defined bounds.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        selectedElement: some(image1),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) {
        bloc.add(const EditorEvent.selectedElementSizeChanged(Size(10, 10)));
        bloc.add(const EditorEvent.selectedElementSizeChanged(Size(-10, -10)));
      },
      expect: () => [],
    );

    blocTest<EditorBloc, EditorState>(
      'Should save state after changing element size.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        selectedElement: some(image1),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) {
        bloc.add(const EditorEvent.selectedElementSizeChanged(Size(100, 100)));
        bloc.add(const EditorEvent.undo());
        bloc.add(const EditorEvent.redo());
      },
      expect: () {
        final Element updatedImage1 =
            image1.copyWith(rect: Rect.fromCenter(center: const Offset(100, 100), width: 100, height: 100));
        final expectedState = EditorState(
          editor: Editor.fromSet({updatedImage1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedImage1),
        );
        return [
          expectedState,
          EditorState.initial(),
          expectedState.copyWith(selectedElement: none()),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>('Should not emit states when no selectedElement is set and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({image1}),
              selectedElement: none(),
              dragPosition: none(),
              draggedElement: none(),
            ),
        act: (bloc) => bloc.add(const SelectedElementSizeChanged(Size(100, 100))),
        expect: () => [],
        errors: () =>
            [const InvalidStateError(message: "SelectedElementSizeChanged was fired but no selectedElement was set")]);
  });
  group('selectedElementPositionChanged', () {
    // define elements used in tests
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 200, 200),
      properties: ElementProperties.fileImageProperties(sourceFilePath: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );

    blocTest<EditorBloc, EditorState>(
      'Should emit correct state when fired.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        selectedElement: some(image1),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) => bloc.add(const EditorEvent.selectedElementPositionChanged(Offset(100, 100))),
      expect: () {
        final Element updatedImage1 = image1.copyWith(rect: const Rect.fromLTWH(100, 100, 200, 200));
        final expectedState = EditorState(
          editor: Editor.fromSet({updatedImage1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedImage1),
        );
        return [expectedState];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should not change position if it is out of the pre-defined bounds.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        selectedElement: some(image1),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) {
        // OK
        bloc.add(const EditorEvent.selectedElementPositionChanged(Offset(10, 10)));
        // out of bounds
        bloc.add(const EditorEvent.selectedElementPositionChanged(Offset(double.infinity, 10)));
        // out of bounds
        bloc.add(const EditorEvent.selectedElementPositionChanged(Offset(10, double.infinity)));
      },
      expect: () {
        final updatedImage1 = image1.copyWith(rect: const Rect.fromLTWH(10, 10, 200, 200));
        return [
          EditorState(
            editor: Editor.fromSet({updatedImage1}),
            draggedElement: none(),
            dragPosition: none(),
            selectedElement: some(updatedImage1),
          )
        ];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'Should save state after changing element position.',
      build: () => createEditorBloc(),
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        selectedElement: some(image1),
        dragPosition: none(),
        draggedElement: none(),
      ),
      act: (bloc) {
        bloc.add(const EditorEvent.selectedElementPositionChanged(Offset(100, 100)));
        bloc.add(const EditorEvent.undo());
        bloc.add(const EditorEvent.redo());
      },
      expect: () {
        final Element updatedImage1 = image1.copyWith(rect: const Rect.fromLTWH(100, 100, 200, 200));
        final expectedState = EditorState(
          editor: Editor.fromSet({updatedImage1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: some(updatedImage1),
        );
        return [
          expectedState,
          EditorState.initial(),
          expectedState.copyWith(selectedElement: none()),
        ];
      },
    );
    blocTest<EditorBloc, EditorState>('Should not emit states when no selectedElement is set and should throw.',
        build: () => createEditorBloc(),
        seed: () => EditorState(
              editor: Editor.fromSet({image1}),
              selectedElement: none(),
              dragPosition: none(),
              draggedElement: none(),
            ),
        act: (bloc) => bloc.add(const SelectedElementPositionChanged(Offset(100, 100))),
        expect: () => [],
        errors: () => [
              const InvalidStateError(
                  message: "SelectedElementPositionChanged was fired but no selectedElement was set")
            ]);
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
        draggedElement: some(image1),
        dragPosition: some(image1.rect.center),
        selectedElement: some(image1),
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
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: none(),
        ),
        EditorState.initial(),
        EditorState(
          editor: Editor.fromSet({image1}),
          draggedElement: none(),
          dragPosition: none(),
          selectedElement: none(),
        ),
        EditorState.initial(),
      ],
    );
  });
}
