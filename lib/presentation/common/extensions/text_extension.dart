import 'package:flutter/material.dart';

extension TextExtension on Text {
  /// Calculates the size of the text inside this text widget.
  /// note: this method supposes ltr direction of text, which is not always true, but it doesn't affect the size that much, so
  /// keep in mind that the size returned may be approximate in some cases.
  /// The text inside this widget must be non-null before calling this method.
  Size getSize({TextDirection? textDirection}) {
    TextPainter tp = TextPainter(
        text: TextSpan(text: data),
        textDirection: textDirection ?? TextDirection.ltr)
      ..layout();
    return tp.size;
  }
}
