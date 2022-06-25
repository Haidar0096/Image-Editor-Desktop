part of 'editor_bloc.dart';

@freezed
class EditorEvent with _$EditorEvent {
  /// Fires when user wants to add an image to the editor.
  const factory EditorEvent.addImage() = AddImage;

  /// Fires when user wants to add a static text to the editor.
  const factory EditorEvent.addStaticText({
    required widgets.BuildContext context,
  }) = AddStaticText;

  /// Fires when user wants to add a variable text to the editor.
  const factory EditorEvent.addVariableText({
    required widgets.BuildContext context,
  }) = AddVariableText;

  /// Fires when user wants to undo the last change to the bloc state.
  const factory EditorEvent.undo() = Undo;

  /// Fires when user wants to redo the last change to the bloc state.
  const factory EditorEvent.redo() = Redo;

  /// Fires when a drag starts on the editor canvas.
  const factory EditorEvent.dragStart(
    /// The local position in the editor widget where the drag started.
    ui.Offset localPosition,
  ) = DragStart;

  /// Fires when an ongoing drag is updated.
  const factory EditorEvent.dragUpdate(
    /// The local position in the editor widget where the drag update has happened.
    ui.Offset localPosition,
  ) = DragUpdate;

  /// Fires when an ongoing drag has ended.
  const factory EditorEvent.dragEnd() = DragEnd;

  /// Fires when a specific element has been dragged.
  const factory EditorEvent.elementDrag({
    required ElementId elementId,
    required ui.Offset delta,
  }) = ElementDrag;

  /// Fires when user taps-up on the editor.
  const factory EditorEvent.tapUp(
    /// The local position where the tap happened.
    ui.Offset localPosition,
  ) = TapUp;

  /// Fires when clear editor button is tapped.
  const factory EditorEvent.clearEditor() = ClearEditor;

  /// Fires when remove element button is tapped.
  const factory EditorEvent.removeSelectedElement() = RemoveSelectedElement;

  /// Fires when the text of a selected static text element changes.
  const factory EditorEvent.staticTextChanged({
    required widgets.BuildContext context,

    /// The new value of the text.
    required String updatedText,
  }) = StaticTextChanged;

  /// fires when the text style of a selected static text element changes.
  const factory EditorEvent.staticTextStyleChanged({
    required widgets.BuildContext context,

    /// The new value of the text style in the element.
    required widgets.TextStyle updatedTextStyle,
  }) = StaticTextStyleChanged;

  /// fires when the text style of a selected variable text element changes.
  const factory EditorEvent.variableTextStyleChanged({
    required widgets.BuildContext context,

    /// The new value of the text style in the element.
    required widgets.TextStyle updatedTextStyle,
  }) = VariableTextStyleChanged;

  /// fires when the source file of a selected variable text element is requested to change.
  const factory EditorEvent.variableTextFileChanged({
    required widgets.BuildContext context,
  }) = VariableTextFileChanged;

  /// fires when selected element should be enlarged in size.
  const factory EditorEvent.enlargeSelectedElement() = EnlargeSelectedElement;

  /// fires when selected element should be reduced in size.
  const factory EditorEvent.reduceSelectedElement() = ReduceSelectedElement;

  /// fires when selected element should be brought to the front.
  const factory EditorEvent.bringSelectedElementToFront() = BringSelectedElementToFront;
}
