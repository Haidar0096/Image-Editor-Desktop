part of 'editor_bloc.dart';

/// - [editor] : represents the underlying editor that this bloc is managing the interaction with.
/// - [draggedElement] : represents the dragged element, this will be the
/// the element placed at the drag position with the largest show order.
/// - [dragPosition] : represents the position of an ongoing drag on the editor widget.
/// if dragPosition exists this does not necessarily means that there is a dragged element, the drag
/// may have simply started at an empty position.
/// - [selectedElement] : represents the selected element, i.e. when the user taps
/// on an element even if he does not drag it.
/// - [isEditingTextElement] : represents whether the user is currently editing a text element.
/// - [canvasKey] : the key of the editor canvas widget. Can be used to get the canvas size.
/// - [canvasBackgroundColor] : the background color of the editor canvas.
/// - [canvasBackgroundImageFile] : the background image of the editor canvas.
@freezed
class EditorState with _$EditorState {
  const EditorState._();

  const factory EditorState({
    required Editor editor,
    required Option<Element> draggedElement,
    required Option<Offset> dragPosition,
    required Option<Element> selectedElement,
    required bool isEditingTextElement,
    required Option<GlobalKey> canvasKey,
    required Option<Color> canvasBackgroundColor,
    required Option<File> canvasBackgroundImageFile,
  }) = _EditorState;

  factory EditorState.initial() => EditorState(
        editor: Editor.empty(),
        selectedElement: none(),
        draggedElement: none(),
        dragPosition: none(),
        isEditingTextElement: false,
        canvasKey: none(),
        canvasBackgroundColor: none(),
        canvasBackgroundImageFile: none(),
      );
}
