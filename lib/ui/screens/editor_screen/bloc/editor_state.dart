part of 'editor_bloc.dart';

/// - [editor] : represents the underlying editor that this bloc is managing the interaction with.
/// - [draggedElementId] : represents the dragged element id, this will be the id of
/// the element placed at the drag position with the largest show order.
/// - [dragPosition] : represents the position of an ongoing drag on the editor widget.
/// if dragPosition exists this does not necessarily means that there is a dragged element, the drag
/// may have simply started at an empty position.
/// - [selectedElementId] : represents the selected element id, i.e. when the user taps
/// on an element even if he does not drag it.
@freezed
class EditorState with _$EditorState {
  const EditorState._();

  const factory EditorState({
    required Editor editor,
    required Option<Element> draggedElement,
    required Option<ui.Offset> dragPosition,
    required Option<Element> selectedElement,
  }) = _EditorState;

  factory EditorState.initial() => EditorState(
        editor: Editor.empty(),
        selectedElement: none(),
        draggedElement: none(),
        dragPosition: none(),
      );
}
