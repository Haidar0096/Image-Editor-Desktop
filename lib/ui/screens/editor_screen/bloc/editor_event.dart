part of 'editor_bloc.dart';

abstract class EditorEvent extends ReplayEvent {
  const EditorEvent();
}

class AddImage extends EditorEvent {
  const AddImage();
}

class AddText extends EditorEvent {
  const AddText();
}

class Undo extends EditorEvent {
  const Undo();
}

class Redo extends EditorEvent {
  const Redo();
}

/// Fired when a drag starts on the editor canvas.
class DragStart extends EditorEvent {
  /// The local position in the widget where the drag started.
  final Offset localPosition;

  const DragStart(this.localPosition);

  @override
  String toString() {
    return 'DragStart{localPosition: $localPosition}';
  }
}

class DragUpdate extends EditorEvent {
  /// The local position in the widget where the drag update has happened.
  final Offset localPosition;

  const DragUpdate(this.localPosition);

  @override
  String toString() {
    return 'DragUpdate{localPosition: $localPosition}';
  }
}

class DragEnd extends EditorEvent {
  const DragEnd();
}

/// Fires when user taps on the editor.
class TapUp extends EditorEvent {
  /// The local position where the tap happened.
  final Offset localPosition;

  const TapUp(this.localPosition);
}
