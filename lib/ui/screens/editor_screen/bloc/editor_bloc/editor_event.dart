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
    required TextDirection textDirection,

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
    TextStyle? updatedTextStyle,
  }) = StaticTextStyleChanged;

  /// fires when the text align of a selected static text element changes.
  const factory EditorEvent.staticTextAlignChanged({
    /// The new value of the text align in the element.
    TextAlign? updatedTextAlign,
  }) = StaticTextAlignChanged;

  /// Fires when user wants to add a variable text to the editor.
  const factory EditorEvent.addVariableText({
    /// The initial text of the variable text.
    required String initialText,

    /// The current text direction.
    required TextDirection textDirection,

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
    TextStyle? updatedTextStyle,
  }) = VariableTextStyleChanged;

  /// fires when the text align of a selected variable text element changes.
  const factory EditorEvent.variableTextAlignChanged({
    /// The new value of the text align in the element.
    TextAlign? updatedTextAlign,
  }) = VariableTextAlignChanged;

  /// Fires when user wants to add an image to the editor.
  const factory EditorEvent.addImage() = AddImage;

  /// Fires when a drag starts on the editor canvas.
  const factory EditorEvent.canvasDragStart(
    /// The local position in the editor widget where the drag started.
    Offset localPosition,
  ) = CanvasDragStart;

  /// Fires when an ongoing drag on the editor canvas is updated.
  const factory EditorEvent.canvasDragUpdate(
    /// The delta of the drag (i.e. the amount of the drag).
    Offset delta,
  ) = CanvasDragUpdate;

  /// Fires when an ongoing drag on the editor canvas has ended.
  const factory EditorEvent.canvasDragEnd() = CanvasDragEnd;

  /// Fires when a an element drag starts.
  const factory EditorEvent.elementDragStart(
    /// The element being dragged.
    Element draggedElement,

    /// The local position in the editor widget where the drag started.
    Offset localPosition,
  ) = ElementDragStart;

  /// Fires when an ongoing drag on an element is updated.
  const factory EditorEvent.elementDragUpdate(
    /// The delta of the drag (i.e. the amount of the drag).
    Offset delta,
  ) = ElementDragUpdate;

  /// Fires when an ongoing drag on an element has ended.
  const factory EditorEvent.elementDragEnd() = ElementDragEnd;

  /// Fires when a tap occurs on the editor canvas.
  const factory EditorEvent.canvasTap() = CanvasTap;

  /// Fires when a tap occurs on an element.
  const factory EditorEvent.elementTap(
    /// The element that has been tapped.
    Element element,
  ) = ElementTap;

  /// Fires when remove element button is tapped.
  const factory EditorEvent.removeSelectedElement() = RemoveSelectedElement;

  /// Fires when the selected element should be unselected.
  const factory EditorEvent.deselectElement() = DeselectElement;

  /// fires when selected element should be brought to the front.
  const factory EditorEvent.bringSelectedElementToFront() = BringSelectedElementToFront;

  /// fires when selected element resizing is updated.
  const factory EditorEvent.resizeUpdate(ResizeDirection resizeDirection, Offset delta) = ResizeUpdate;

  /// fires when selected element resizing ends.
  const factory EditorEvent.resizeEnd() = ResizeEnd;

  /// fires when selected element size changes.
  const factory EditorEvent.selectedElementSizeChanged(Size updatedSize) = SelectedElementSizeChanged;

  /// fires when selected element position changes.
  const factory EditorEvent.selectedElementPositionChanged(
    /// The new top-left of the element's rect.
    Offset updatedPosition,
  ) = SelectedElementPositionChanged;

  /// Fires when the editing mode of a text element changes.
  const factory EditorEvent.textEditingModeChanged(bool isEditingTextElement) = TextEditingModeChanged;

  /// Fires when clear editor button is tapped.
  const factory EditorEvent.clearEditor() = ClearEditor;

  /// Fires when canvas key is updated.
  const factory EditorEvent.setCanvasKey(Option<GlobalKey> key) = SetCanvasKey;

  /// Fires when canvas background color is updated.
  const factory EditorEvent.changeCanvasBackgroundColor(Color color) = ChangeCanvasBackgroundColor;

  /// Fires when canvas background image is updated.
  const factory EditorEvent.changeCanvasBackgroundImage() = ChangeCanvasBackgroundImage;

  /// Fires when canvas background image is removed.
  const factory EditorEvent.removeCanvasBackgroundImage() = RemoveCanvasBackgroundImage;

  /// Fires when selected element should be duplicated.
  const factory EditorEvent.duplicateSelectedElement() = DuplicateSelectedElement;
}
