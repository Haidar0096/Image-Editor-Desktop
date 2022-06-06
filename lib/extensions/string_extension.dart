import 'package:flutter/painting.dart';

extension StringExtension on String {
  /// Returns an approximate [Size] this text will have once placed in a [Text] widget with the provided [TextStyle].
  Size textSize({TextStyle? textStyle, TextDirection? textDirection}) {
    final textSpan = TextSpan(
      text: this,
      style: textStyle,
    );
    final TextPainter tp =
        TextPainter(text: textSpan, textDirection: textDirection);
    tp.layout();
    return tp.size;
  }
}
