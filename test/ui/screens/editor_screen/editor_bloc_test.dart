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
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_state_error.dart';
import 'package:test/test.dart';

import 'editor_bloc_test.mocks.dart';

@GenerateMocks([Logger, ElementIdGenerator, FilePicker])
void main() {
  EditorBloc createEditorBloc({
    FilePicker? filePicker,
    Logger? logger,
    ElementIdGenerator? elementIdGenerator,
  }) =>
      EditorBloc(
        filePicker ?? MockFilePicker(),
        logger ?? MockLogger(),
        elementIdGenerator ?? MockElementIdGenerator(),
      );

  group('initialization tests', () {
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
      act: (bloc) => bloc.add(const AddImage()),
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
      act: (bloc) => bloc.add(const AddImage()),
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
      act: (bloc) => bloc.add(const AddImage()),
      expect: () => [],
    );
  });
  group('Event AddText', () {
    //todo implements tests
  });
  group('Event Undo', () {
    //todo implements tests
  });
  group('Event Redo', () {
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
      'Should detect the element with largest show order and emit correct state.',
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
      'Should mutate only draggedElementId and dragPosition in the state when this event is fired',
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
      act: (bloc) => bloc.add(DragStart(image2.rect.center)),
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
        act: (bloc) => bloc.add(const DragUpdate(Offset(300, 300))),
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
        act: (bloc) => bloc.add(const DragUpdate(Offset(300, 300))),
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
        act: (bloc) => bloc.add(const DragUpdate(Offset(300, 300))),
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
        act: (bloc) => bloc.add(const DragUpdate(Offset(300, 300))),
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
    blocTest<EditorBloc, EditorState>(
      'Should mutate only dragPosition when draggedElementId is none()',
      seed: () => EditorState(
        editor: Editor.fromSet({image1, image2}),
        draggedElementId: none(),
        dragPosition: some(image2.rect.center),
        selectedElementId: some(image1.id),
      ),
      build: () => createEditorBloc(),
      act: (bloc) => bloc.add(const DragEnd()),
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
      act: (bloc) => bloc.add(const DragEnd()),
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
      act: (bloc) => bloc.add(const DragEnd()),
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
      act: (bloc) => bloc.add(TapUp(image2.rect.center)),
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
      act: (bloc) => bloc.add(const TapUp(Offset(240, 240))),
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
      act: (bloc) => bloc.add(const TapUp(Offset(500, 500))),
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
      act: (bloc) => bloc.add(const TapUp(Offset(500, 500))),
      expect: () => [],
    );
  });
}
