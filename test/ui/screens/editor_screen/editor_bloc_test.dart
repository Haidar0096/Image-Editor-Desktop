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
import 'package:test/test.dart';

import 'editor_bloc_test.mocks.dart';

@GenerateMocks([Logger, ElementIdGenerator, FilePicker])
void main() {
  EditorBloc createEditorBloc({
    FilePicker? filePicker,
    Logger? logger,
    ElementIdGenerator? elementIdGenerator,
    EditorState? initialState,
  }) =>
      EditorBloc(
        filePicker ?? MockFilePicker(),
        logger ?? MockLogger(),
        elementIdGenerator ?? MockElementIdGenerator(),
        initialState: initialState ?? EditorState.initial(),
      );

  group('initialization tests', () {
    blocTest<EditorBloc, EditorState>(
      'Emits no states when created',
      build: () => createEditorBloc(),
      expect: () => [],
    );
    test('Should have correct initial state', () {
      final editorBloc = createEditorBloc();
      final expectedInitialState = EditorState(
        editor: Editor.empty(),
        selectedElementId: none(),
        draggedElementId: none(),
        dragPosition: none(),
      );
      expect(
        editorBloc.state,
        expectedInitialState,
      );
    });
  });
  group('Event AddImage', () {
    // define elements used in tests
    Element image = const Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      elementType: ElementType.image(path: 'hello.jpeg'),
      showOrder: 1,
      id: '1',
    );
    Element image2 = const Element(
      rect: Rect.fromLTWH(0.0, 0.0, 250, 250),
      elementType: ElementType.image(path: 'hello_world.jpeg'),
      showOrder: 2,
      id: '2',
    );
    blocTest<EditorBloc, EditorState>(
        'Should emit correct state when AddImage is fired.',
        build: () {
          FilePicker mockFilePicker = MockFilePicker();
          ElementIdGenerator mockElementIdGenerator = MockElementIdGenerator();
          // set up the mock file picker
          when(mockFilePicker.pickSingleFile(
                  allowedExtensions: captureThat(
                      equals(allowedFileExtensions.unlock),
                      named: 'allowedExtensions')))
              .thenAnswer((realInvocation) async =>
                  some(File((image.elementType as ImageElementType).path)));
          // set up the mock element id generator
          when(mockElementIdGenerator.generate()).thenReturn(image.id);
          return createEditorBloc(
            filePicker: mockFilePicker,
            elementIdGenerator: mockElementIdGenerator,
          );
        },
        act: (bloc) => bloc.add(const AddImage()),
        expect: () {
          final expectedState = EditorState(
            editor: Editor.fromSet({image}),
            draggedElementId: none(),
            dragPosition: none(),
            selectedElementId: none(),
          );
          return [expectedState];
        });
    blocTest<EditorBloc, EditorState>(
        'Should mutate only the editor in the state when AddImage is fired.',
        build: () {
          FilePicker mockFilePicker = MockFilePicker();
          ElementIdGenerator mockElementIdGenerator = MockElementIdGenerator();
          // set up the mock file picker
          when(mockFilePicker.pickSingleFile(
                  allowedExtensions: captureThat(
                      equals(allowedFileExtensions.unlock),
                      named: 'allowedExtensions')))
              .thenAnswer((realInvocation) async =>
                  some(File((image2.elementType as ImageElementType).path)));
          // set up the mock element id generator
          when(mockElementIdGenerator.generate()).thenReturn(image2.id);
          return createEditorBloc(
              filePicker: mockFilePicker,
              elementIdGenerator: mockElementIdGenerator,
              initialState: EditorState(
                editor: Editor.fromSet({image}),
                draggedElementId: some(image.id),
                dragPosition: some(image.rect.center),
                selectedElementId: some(image.id),
              ));
        },
        act: (bloc) => bloc.add(const AddImage()),
        expect: () {
          final expectedState = EditorState(
            editor: Editor.fromSet({image, image2}),
            draggedElementId: some(image.id),
            dragPosition: some(image.rect.center),
            selectedElementId: some(image.id),
          );
          return [expectedState];
        });
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
    //todo implements tests
  });
  group('Event DragUpdate', () {
    //todo implements tests
  });
  group('Event DragEnd', () {
    //todo implements tests
  });
  group('Event TapUp', () {
    //todo implements tests
  });
}
