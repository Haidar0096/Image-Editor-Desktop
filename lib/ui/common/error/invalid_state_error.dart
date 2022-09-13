/// Represents a state that is invalid to reach in a component.
class InvalidStateError {
  final String? message;

  const InvalidStateError({this.message});

  @override
  String toString() => 'InvalidStateError{message: $message}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvalidStateError && runtimeType == other.runtimeType && message == other.message;

  @override
  int get hashCode => message.hashCode;
}
