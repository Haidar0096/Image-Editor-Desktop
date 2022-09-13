class ImageEditorException implements Exception {
  final String message;

  ImageEditorException(this.message);

  @override
  String toString() => message;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageEditorException && runtimeType == other.runtimeType && message == other.message;

  @override
  int get hashCode => message.hashCode;
}
