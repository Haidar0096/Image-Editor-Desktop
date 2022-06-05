import 'dart:io';
import 'dart:ui';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart' hide ISet;
import 'package:logger/logger.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:photo_editor/services/editor/element_id_generator.dart';
import 'package:photo_editor/services/file_picker/file_picker.dart';
import 'package:photo_editor/services/history/history.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:test/test.dart';

import 'editor_bloc_test.mocks.dart';

@GenerateMocks(
  [Logger, ElementIdGenerator, FilePicker],
  customMocks: [MockSpec<History<Editor>>(as: #MockEditorHistory)],
)
void main() {
  EditorBloc createEditorBloc({
    FilePicker? filePicker,
    Logger? logger,
    ElementIdGenerator? elementIdGenerator,
    History<Editor>? history,
  }) =>
      EditorBloc(
        filePicker ?? MockFilePicker(),
        logger ?? MockLogger(),
        elementIdGenerator ?? MockElementIdGenerator(),
        history ?? History<Editor>(),
      );

  group('initialization tests', () {
    // define mock editor history
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
  });
  group('Event Undo', () {
    // define elements used in tests
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      elementType: ElementType.image(path: 'hello.jpeg'),
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
                allowedExtensions: captureThat(
                    equals(allowedFileExtensions.unlock),
                    named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async =>
                some(File((image1.elementType as ImageElementType).path)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        // add an image
        bloc.add(const AddImageEditorEvent());
        // then undo
        bloc.add(const UndoEditorEvent());
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
                allowedExtensions: captureThat(
                    equals(allowedFileExtensions.unlock),
                    named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async =>
                some(File((image1.elementType as ImageElementType).path)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        // undo
        bloc.add(const UndoEditorEvent());
        // add image
        bloc.add(const AddImageEditorEvent());
        // undo
        bloc.add(const UndoEditorEvent());
        // undo again
        bloc.add(const UndoEditorEvent());
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
  group('Event Redo', () {
    // define elements used in tests
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      elementType: ElementType.image(path: 'hello.jpeg'),
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
                allowedExtensions: captureThat(
                    equals(allowedFileExtensions.unlock),
                    named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async =>
                some(File((image1.elementType as ImageElementType).path)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        // add an image
        bloc.add(const AddImageEditorEvent());
        // then undo
        bloc.add(const UndoEditorEvent());
        // then redo
        bloc.add(const RedoEditorEvent());
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
                allowedExtensions: captureThat(
                    equals(allowedFileExtensions.unlock),
                    named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async =>
                some(File((image1.elementType as ImageElementType).path)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        // redo
        bloc.add(const RedoEditorEvent());
        // add an image
        bloc.add(const AddImageEditorEvent());
        // then redo
        bloc.add(const RedoEditorEvent());
        // then undo
        bloc.add(const UndoEditorEvent());
        // then redo
        bloc.add(const RedoEditorEvent());
        // then redo again
        bloc.add(const RedoEditorEvent());
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
  group('Event AddImage', () {
    // define elements used in tests
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      elementType: ElementType.image(path: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    const Element image2 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      elementType: ElementType.image(path: 'hello_world.jpeg'),
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
                allowedExtensions: captureThat(
                    equals(allowedFileExtensions.unlock),
                    named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async =>
                some(File((image1.elementType as ImageElementType).path)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) => bloc.add(const AddImageEditorEvent()),
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
                allowedExtensions: captureThat(
                    equals(allowedFileExtensions.unlock),
                    named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async =>
                some(File((image2.elementType as ImageElementType).path)));
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
      act: (bloc) => bloc.add(const AddImageEditorEvent()),
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
                allowedExtensions: captureThat(
                    equals(allowedFileExtensions.unlock),
                    named: 'allowedExtensions')))
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
      act: (bloc) => bloc.add(const AddImageEditorEvent()),
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
                allowedExtensions: captureThat(
                    equals(allowedFileExtensions.unlock),
                    named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async =>
                some(File((image1.elementType as ImageElementType).path)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        // add image
        bloc.add(const AddImageEditorEvent());
        // undo
        bloc.add(const UndoEditorEvent());
        // redo
        bloc.add(const RedoEditorEvent());
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
  group('Event AddStaticText', () {
    //todo implements tests
  });
  group('Event AddVariableText', () {
    //todo implements tests
  });
  group('Event DragStart', () {
    // define elements used in tests
    // image with top-left at (0,0)
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      elementType: ElementType.image(path: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    // image with top-left at (125,125) i.e. at center of image1
    const Element image2 = Element(
      rect: Rect.fromLTWH(125.0, 125.0, 250, 250),
      elementType: ElementType.image(path: 'hello_world.jpeg'),
      showOrder: 2,
      id: '2',
    );

    blocTest<EditorBloc, EditorState>(
      'Should emit correct state when this event is fired.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElementId: none(),
        dragPosition: none(),
        selectedElementId: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(DragStartEditorEvent(image1.rect.center)),
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
      'Should detect the element with largest show order and emit correct state.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: none(),
        dragPosition: none(),
        selectedElementId: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(DragStartEditorEvent(image1.rect.center)),
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
      'Should mutate only draggedElementId and dragPosition in the state when this event is fired',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: none(),
        dragPosition: none(),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(DragStartEditorEvent(image1.rect.center)),
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
      'Should not emit state when draggedElementId is not none() and should throw.',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: none(),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(DragStartEditorEvent(image2.rect.center)),
      expect: () => [],
      errors: () =>
          [const EditorStateError(EditorStateError.simultaneousDragStart)],
    );
    blocTest<EditorBloc, EditorState>(
      'Should not emit state when dragPosition is not none() and should throw',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: none(),
        dragPosition: some(image1.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(DragStartEditorEvent(image2.rect.center)),
      expect: () => [],
      errors: () =>
          [const EditorStateError(EditorStateError.simultaneousDragStart)],
    );
  });
  group(
    'Event DragUpdate',
    () {
      // define elements used in tests
      // image with top-left at (0,0)
      const Element image1 = Element(
        rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
        elementType: ElementType.image(path: 'hello.jpeg'),
        showOrder: 1,
        id: '1',
      );
      // image with top-left at (125,125) i.e. at center of image1
      const Element image2 = Element(
        rect: Rect.fromLTWH(125.0, 125.0, 250, 250),
        elementType: ElementType.image(path: 'hello_world.jpeg'),
        showOrder: 2,
        id: '2',
      );

      blocTest<EditorBloc, EditorState>(
        'Should emit correct state when this event is fired.',
        seed: () => EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: some(image2.id),
          dragPosition: some(image2.rect.center),
          selectedElementId: none(),
        ),
        build: () => createEditorBloc(),
        act: (bloc) => bloc.add(const DragUpdateEditorEvent(Offset(300, 300))),
        expect: () {
          final image2Dragged = image2.copyWith(
              rect: image2.rect.translate(
                  ((125 + 250 / 2) - 300).abs(), (125 + 250 / 2 - 300).abs()));
          final expectedState = EditorState(
            editor: Editor.fromSet({image1, image2Dragged}),
            draggedElementId: some(image2.id),
            dragPosition: some(image2Dragged.rect.center),
            selectedElementId: none(),
          );
          return [expectedState];
        },
      );
      blocTest<EditorBloc, EditorState>(
        'Should mutate only dragPosition and editor in the state when draggedElementId and dragPosition are not none().',
        seed: () => EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: some(image2.id),
          dragPosition: some(image2.rect.center),
          selectedElementId: some(image1.id),
        ),
        build: () => createEditorBloc(),
        act: (bloc) => bloc.add(const DragUpdateEditorEvent(Offset(300, 300))),
        expect: () {
          final image2Dragged = image2.copyWith(
              rect: image2.rect.translate(
                  ((125 + 250 / 2) - 300).abs(), (125 + 250 / 2 - 300).abs()));
          final expectedState = EditorState(
            editor: Editor.fromSet({image1, image2Dragged}),
            draggedElementId: some(image2.id),
            dragPosition: some(image2Dragged.rect.center),
            selectedElementId: some(image1.id),
          );
          return [expectedState];
        },
      );
      blocTest<EditorBloc, EditorState>(
        'should mutate only dragPosition in the state when draggedElementId is none().',
        seed: () => EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: none(),
          dragPosition: some(image2.rect.center),
          selectedElementId: some(image1.id),
        ),
        build: () => createEditorBloc(),
        act: (bloc) => bloc.add(const DragUpdateEditorEvent(Offset(300, 300))),
        expect: () {
          final expectedState = EditorState(
            editor: Editor.fromSet({image1, image2}),
            draggedElementId: none(),
            dragPosition: some(const Offset(300, 300)),
            selectedElementId: some(image1.id),
          );
          return [expectedState];
        },
      );
      blocTest<EditorBloc, EditorState>(
        'should not emit state when dragPosition is none().',
        seed: () => EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: some(image1.id),
          dragPosition: none(),
          selectedElementId: some(image1.id),
        ),
        build: () => createEditorBloc(),
        act: (bloc) => bloc.add(const DragUpdateEditorEvent(Offset(300, 300))),
        expect: () => [],
      );
    },
  );
  group('Event DragEnd', () {
    // define elements used in tests
    // image with top-left at (0,0)
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      elementType: ElementType.image(path: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    // image with top-left at (125,125) i.e. at center of image1
    const Element image2 = Element(
      rect: Rect.fromLTWH(125.0, 125.0, 250, 250),
      elementType: ElementType.image(path: 'hello_world.jpeg'),
      showOrder: 2,
      id: '2',
    );

    late MockFilePicker mockFilePicker;
    late ElementIdGenerator mockElementIdGenerator;

    blocTest<EditorBloc, EditorState>(
      'Should mutate only dragPosition when draggedElementId is none()',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: none(),
        dragPosition: some(image2.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const DragEndEditorEvent()),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(image1.id),
        );
        return [expectedState];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should not emit state when dragPosition is none() and draggedElementId is not none() and should throw',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: none(),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const DragEndEditorEvent()),
      expect: () => [],
      errors: () =>
          [const EditorStateError(EditorStateError.dragPositionNotSet)],
    );

    blocTest<EditorBloc, EditorState>(
      'should mutate only dragPosition and draggedElementId when both are not none()',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const DragEndEditorEvent()),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: some(image1.id),
        );
        return [expectedState];
      },
    );

    blocTest<EditorBloc, EditorState>(
      'should save the state after dragging an element ends.',
      setUp: () {
        // define the mocks
        mockFilePicker = MockFilePicker();
        mockElementIdGenerator = MockElementIdGenerator();
        // set up the mock file picker
        when(mockFilePicker.pickSingleFile(
                allowedExtensions: captureThat(
                    equals(allowedFileExtensions.unlock),
                    named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async =>
                some(File((image1.elementType as ImageElementType).path)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        bloc.add(const AddImageEditorEvent());
        bloc.add(DragStartEditorEvent(image1.rect.topLeft));
        bloc.add(DragUpdateEditorEvent(image1.rect.topRight));
        bloc.add(const DragEndEditorEvent());
        bloc.add(const UndoEditorEvent());
        bloc.add(const RedoEditorEvent());
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
            editor: Editor.fromSet({
              image1.copyWith(
                  rect: image1.rect.translate(image1.rect.width, 0.0)),
            }),
            draggedElementId: some(image1.id),
            dragPosition: some(image1.rect.topRight),
            selectedElementId: none(),
          ),
          // after drag end event
          EditorState(
            editor: Editor.fromSet({
              image1.copyWith(
                  rect: image1.rect.translate(image1.rect.width, 0.0)),
            }),
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
            editor: Editor.fromSet({
              image1.copyWith(
                  rect: image1.rect.translate(image1.rect.width, 0.0)),
            }),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          ),
        ];
      },
    );
  });
  group('Event TapUp', () {
    // define elements used in tests
    // image with top-left at (0,0)
    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      elementType: ElementType.image(path: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    // image with top-left at (125,125) i.e. at center of image1
    const Element image2 = Element(
      rect: Rect.fromLTWH(125.0, 125.0, 250, 250),
      elementType: ElementType.image(path: 'hello_world.jpeg'),
      showOrder: 2,
      id: '2',
    );
    blocTest<EditorBloc, EditorState>(
      'Should mutate only selectedElementId when tap is on an element',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(TapUpEditorEvent(image2.rect.center)),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: some(image1.id),
          dragPosition: some(image1.rect.center),
          selectedElementId: some(image2.id),
        );
        return [expectedState];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should select element with largest show order when tap is on an element',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const TapUpEditorEvent(Offset(240, 240))),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: some(image1.id),
          dragPosition: some(image1.rect.center),
          selectedElementId: some(image2.id),
        );
        return [expectedState];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should clear selectedElementId when tap is not on an element and selectedElementId is set',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const TapUpEditorEvent(Offset(500, 500))),
      expect: () {
        final expectedState = EditorState(
          editor: Editor.fromSet({image1, image2}),
          draggedElementId: some(image1.id),
          dragPosition: some(image1.rect.center),
          selectedElementId: none(),
        );
        return [expectedState];
      },
    );
    blocTest<EditorBloc, EditorState>(
      'Should not emit state when tap is not on an element and selectedElementId is not set',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const TapUpEditorEvent(Offset(500, 500))),
      expect: () => [],
    );
  });
  group('Event ClearEditorEvent', () {
    // define elements used in tests

    const Element image1 = Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      elementType: ElementType.image(path: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );

    late MockFilePicker mockFilePicker;
    late ElementIdGenerator mockElementIdGenerator;

    blocTest<EditorBloc, EditorState>(
      'Should clear editor and clear drag states if it has elements',
      seed: () => EditorState(
        editor: Editor.fromSet({image1}),
        draggedElementId: some(image1.id),
        dragPosition: some(image1.rect.center),
        selectedElementId: none(),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ClearEditorEvent()),
      expect: () => [
        EditorState.initial(),
      ],
    );

    blocTest<EditorBloc, EditorState>(
      'Should not emit any state when editor is already empty.',
      seed: () => EditorState.initial(),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const ClearEditorEvent()),
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
                allowedExtensions: captureThat(
                    equals(allowedFileExtensions.unlock),
                    named: 'allowedExtensions')))
            .thenAnswer((realInvocation) async =>
                some(File((image1.elementType as ImageElementType).path)));
        // set up the mock element id generator
        when(mockElementIdGenerator.generate()).thenReturn(image1.id);
      },
      build: () => createEditorBloc(
        filePicker: mockFilePicker,
        elementIdGenerator: mockElementIdGenerator,
      ),
      act: (bloc) {
        bloc.add(const AddImageEditorEvent());
        bloc.add(const ClearEditorEvent());
        bloc.add(const UndoEditorEvent());
        bloc.add(const RedoEditorEvent());
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
