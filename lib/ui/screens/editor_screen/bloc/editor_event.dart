part of 'editor_bloc.dart';

abstract class EditorEvent extends ReplayEvent {
  const EditorEvent();
}

/// Fires when user wants to add an image to the editor.
class AddImage extends EditorEvent {
  const AddImage();
}

/// Fires when user wants to add a text to the editor.
class AddText extends EditorEvent {
  const AddText();
}

/// Fires when user wants to undo the last change to the bloc state.
class Undo extends EditorEvent {
  const Undo();
}

/// Fires when user wants to redo the last change to the bloc state.
class Redo extends EditorEvent {
  const Redo();
}

/// Fires when a drag starts on the editor canvas.
class DragStart extends EditorEvent {
  /// The local position in the widget where the drag started.
  final Offset localPosition;

  const DragStart(this.localPosition);

  @override
  String toString() {
    return 'DragStart{localPosition: $localPosition}';
  }
}

/// Fires when an ongoing drag is updated.
class DragUpdate extends EditorEvent {
  /// The local position in the widget where the drag update has happened.
  final Offset localPosition;

  const DragUpdate(this.localPosition);

  @override
  String toString() {
    return 'DragUpdate{localPosition: $localPosition}';
  }
}

/// Fires when an ongoing drag has ended.
class DragEnd extends EditorEvent {
  const DragEnd();
}

/// Fires when user taps-up on the editor.
class TapUp extends EditorEvent {
  /// The local position where the tap happened.
  final Offset localPosition;

  const TapUp(this.localPosition);
}
