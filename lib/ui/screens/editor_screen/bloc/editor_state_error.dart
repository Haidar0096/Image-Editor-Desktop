import 'package:freezed_annotation/freezed_annotation.dart';

part 'editor_state_error.freezed.dart';

@freezed
class EditorStateError with _$EditorStateError {
  const EditorStateError._();

  static const String simultaneousDragStart = 'An invalid state was detected: trying to start a drag while a drag is already ongoing';
  static const String dragPositionNotSet = 'An invalid state was detected: dragPosition is not set.';

  const factory EditorStateError(String message) = _EditorStateError;
}
