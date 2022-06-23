/// Represents a failure in the execution of the program.
abstract class Failure {
  /// The message that explains the reason for the failure.
  String get message;

  /// The code that represents the failure.
  String get code;

  @override
  String toString() {
    return 'Failure{message: $message, code: $code}';
  }
}
