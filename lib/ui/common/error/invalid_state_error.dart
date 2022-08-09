class InvalidStateError {
  final String? message;

  const InvalidStateError({this.message});

  @override
  String toString() => 'InvalidStateError{message: $message}';
}
