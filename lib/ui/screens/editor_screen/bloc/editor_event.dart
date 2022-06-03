part of 'editor_bloc.dart';

abstract class EditorEvent{
  const EditorEvent();
}

/// Fires when user wants to add an image to the editor.
class EditorImageAdded extends EditorEvent {
  const EditorImageAdded();
}

/// Fires when user wants to add a static text to the editor.
class EditorStaticTextAdded extends EditorEvent {
  const EditorStaticTextAdded();
}

/// Fires when user wants to add a variable text to the editor.
class EditorVariableTextAdded extends EditorEvent {
  const EditorVariableTextAdded();
}

/// Fires when user wants to undo the last change to the bloc state.
class EditorUndoTapped extends EditorEvent {
  const EditorUndoTapped();
}

/// Fires when user wants to redo the last change to the bloc state.
class EditorRedoTapped extends EditorEvent {
  const EditorRedoTapped();
}

/// Fires when a drag starts on the editor canvas.
class EditorDragStarted extends EditorEvent {
  /// The local position in the widget where the drag started.
  final Offset localPosition;

  const EditorDragStarted(this.localPosition);

  @override
  String toString() {
    return 'DragStart{localPosition: $localPosition}';
  }
}

/// Fires when an ongoing drag is updated.
class EditorDragUpdated extends EditorEvent {
  /// The local position in the widget where the drag update has happened.
  final Offset localPosition;

  const EditorDragUpdated(this.localPosition);

  @override
  String toString() {
    return 'DragUpdate{localPosition: $localPosition}';
  }
}

/// Fires when an ongoing drag has ended.
class EditorDragEnded extends EditorEvent {
  const EditorDragEnded();
}

/// Fires when user taps-up on the editor.
class EditorTappedUp extends EditorEvent {
  /// The local position where the tap happened.
  final Offset localPosition;

  const EditorTappedUp(this.localPosition);
}

/// Fires when clear editor button is tapped.
class EditorCleared extends EditorEvent{
  const EditorCleared();
}
