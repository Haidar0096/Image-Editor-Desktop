part of 'editor_bloc.dart';

@freezed
class EditorEvent with _$EditorEvent {
  /// Fires when user wants to undo the last change to the bloc state.
  const factory EditorEvent.undo() = Undo;

  /// Fires when user wants to redo the last change to the bloc state.
  const factory EditorEvent.redo() = Redo;

  /// Fires when user wants to add a static text to the editor.
  const factory EditorEvent.addStaticText({
    /// The initial text of the static text.
    required String initialText,

    /// The current text direction of the locale.
    required widgets.TextDirection textDirection,

    /// The minimum width of the static text.
    required double minWidth,

    /// The maximum width of the static text.
    required double maxWidth,
  }) = AddStaticText;

  /// Fires when the text of a selected static text element changes.
  const factory EditorEvent.staticTextChanged({
    /// The new value of the text.
    required String updatedText,
  }) = StaticTextChanged;

  /// fires when the text style of a selected static text element changes.
  const factory EditorEvent.staticTextStyleChanged({
    /// The new value of the text style in the element.
    required widgets.TextStyle updatedTextStyle,
  }) = StaticTextStyleChanged;

  /// Fires when user wants to add a variable text to the editor.
  const factory EditorEvent.addVariableText({
    /// The initial text of the variable text.
    required String initialText,

    /// The current text direction.
    required widgets.TextDirection textDirection,

    /// The minimum width of the variable text placeholder.
    required double minWidth,

    /// The maximum width of the variable text placeholder.
    required double maxWidth,
  }) = AddVariableText;

  /// fires when the source file of a selected variable text element is requested to change.
  const factory EditorEvent.variableTextFileChanged() = VariableTextFileChanged;

  /// fires when the text style of a selected variable text element changes.
  const factory EditorEvent.variableTextStyleChanged({
    /// The new value of the text style in the element.
    required widgets.TextStyle updatedTextStyle,
  }) = VariableTextStyleChanged;

  /// Fires when user wants to add an image to the editor.
  const factory EditorEvent.addImage() = AddImage;

  /// Fires when a drag starts on the editor canvas.
  const factory EditorEvent.dragStart(
    /// The local position in the editor widget where the drag started.
    ui.Offset localPosition,
  ) = DragStart;

  /// Fires when an ongoing drag on the editor canvas is updated.
  const factory EditorEvent.dragUpdate(
    /// The delta of the drag (i.e. the amount of the drag).
    ui.Offset delta,
  ) = DragUpdate;

  /// Fires when an ongoing drag on the editor canvas has ended.
  const factory EditorEvent.dragEnd() = DragEnd;

  /// Fires when a tap occurs on the editor canvas.
  const factory EditorEvent.tap(
    /// The local position in the editor widget where the tap has happened.
    ui.Offset localPosition,
  ) = Tap;

  /// Fires when remove element button is tapped.
  const factory EditorEvent.removeSelectedElement() = RemoveSelectedElement;

  /// fires when selected element should be brought to the front.
  const factory EditorEvent.bringSelectedElementToFront() = BringSelectedElementToFront;

  /// Fires when clear editor button is tapped.
  const factory EditorEvent.clearEditor() = ClearEditor;
}
