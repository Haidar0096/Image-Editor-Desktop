part of 'editor_bloc.dart';

@freezed
class EditorEvent with _$EditorEvent {
  /// Fires when user wants to add an image to the editor.
  const factory EditorEvent.addImage() = AddImageEditorEvent;

  /// Fires when user wants to add a static text to the editor.
  const factory EditorEvent.addStaticText({
    required material.BuildContext context,
  }) = AddStaticTextEditorEvent;

  /// Fires when user wants to add a variable text to the editor.
  const factory EditorEvent.addVariableText({
    required material.BuildContext context,
  }) = AddVariableTextEditorEvent;

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

  const factory EditorEvent.drag(
      {required ElementId elementId, required Offset delta}) = DragEditorEvent;

  /// Fires when user taps-up on the editor.
  const factory EditorEvent.tapUp(
    /// The local position where the tap happened.
    Offset localPosition,
  ) = TapUpEditorEvent;

  /// Fires when clear editor button is tapped.
  const factory EditorEvent.clearEditor() = ClearEditorEvent;

  /// Fires when remove element button is tapped
  const factory EditorEvent.removeElement({
    /// The id of the element to be removed
    required ElementId elementId,
  }) = RemoveElementEditorEvent;

  /// Fires when the text of a selected text element changes
  const factory EditorEvent.textElementTextChanged({
    required material.BuildContext context,

    /// The new value of the text in the element.
    required String updatedText,
  }) = TextElementTextChangedEditorEvent;

  /// fires when the text style of a selected text element changes
  const factory EditorEvent.textElementTextStyleChanged({
    required material.BuildContext context,

    /// The new value of the text in the element.
    required material.TextStyle updatedTextStyle,
  }) = TextElementTextStyleChangedEditorEvent;

  /// fires when make element large is pressed
  const factory EditorEvent.makeLarger() = MakeElementLargerEditorEvent;

  /// fires when make element small is pressed
  const factory EditorEvent.makeSmaller() = MakeElementSmallerEditorEvent;

  /// fires when bring element to front is pressed
  const factory EditorEvent.bringToFront() = BringToFrontEditorEvent;

  /// fires when the text style of a selected variable text element changes
  const factory EditorEvent.variableTextElementTextStyleChanged({
    required material.BuildContext context,

    /// The new value of the text in the element.
    required material.TextStyle updatedTextStyle,
  }) = VariableTextElementTextStyleChangedEditorEvent;

  /// fires when the source file of variable text will change
  const factory EditorEvent.variableTextElementFileChangedEvent({required material.BuildContext context}) =
      VariableTextElementFileChangedEvent;
}
