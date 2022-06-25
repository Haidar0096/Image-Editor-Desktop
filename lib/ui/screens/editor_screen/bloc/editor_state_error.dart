part of 'editor_bloc.dart';

@freezed
class EditorStateError with _$EditorStateError {
  const EditorStateError._();

  static const String simultaneousDragStart =
      'An invalid state was detected: trying to start a drag while a drag is already ongoing';
  static const String dragPositionNotSet = 'An invalid state was detected: dragPosition is not set.';
  static const String selectedElementDoesNotExist =
      'An invalid state was detected: a selected element in the editor widget was not found within the editor elements.';
  static const String noSelectedElement = 'An invalid state was detected: there is no selected element.';

  const factory EditorStateError(String message) = _EditorStateError;
}
