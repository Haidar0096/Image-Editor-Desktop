part of 'editor_bloc.dart';

@freezed
class EditorEvent with _$EditorEvent {
  /// Fires when user wants to add an image to the editor.
  const factory EditorEvent.addImage() = AddImageEditorEvent;

  /// Fires when user wants to add a static text to the editor.
  const factory EditorEvent.addStaticText() = AddStaticTextEditorEvent;

  /// Fires when user wants to add a variable text to the editor.
  const factory EditorEvent.addVariableText() = AddVariableTextEditorEvent;

  /// Fires when user wants to undo the last change to the bloc state.
  const factory EditorEvent.undo() = UndoEditorEvent;

  /// Fires when user wants to redo the last change to the bloc state.
  const factory EditorEvent.redo() = RedoEditorEvent;

  /// Fires when a drag starts on the editor canvas.

  const factory EditorEvent.dragStart(
    /// The local position in the widget where the drag started.
    Offset localPosition,
  ) = DragStartEditorEvent;

  /// Fires when an ongoing drag is updated.

  const factory EditorEvent.dragUpdate(
    /// The local position in the widget where the drag update has happened.
    Offset localPosition,
  ) = DragUpdateEditorEvent;

  /// Fires when an ongoing drag has ended.
  const factory EditorEvent.dragEnd() = DragEndEditorEvent;

  /// Fires when user taps-up on the editor.
  const factory EditorEvent.tapUp(
    /// The local position where the tap happened.
    Offset localPosition,
  ) = TapUpEditorEvent;

  /// Fires when clear editor button is tapped.
  const factory EditorEvent.clearEditor() = ClearEditorEvent;
}
