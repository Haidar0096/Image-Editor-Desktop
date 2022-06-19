import 'package:flutter/painting.dart';

extension StringExtension on String {
  /// Returns an approximate size this text will have once placed in a Text widget with the provided properties.
  /// The [minWidth] and [maxWidth] properties are needed to provide more accurate results.
  Size textSize({
    required TextDirection textDirection,
    required double textScaleFactor,
    required double minWidth,
    required double maxWidth,
    TextStyle? textStyle,
    int? maxLines,
    TextAlign? textAlign,
    Locale? locale,
    String? ellipsis,
    StrutStyle? strutStyle,
    TextHeightBehavior? textHeightBehavior,
    TextWidthBasis? textWidthBasis,
  }) {
    final textSpan = TextSpan(
      text: this,
      style: textStyle,
      locale: locale,
    );
    final TextPainter tp = TextPainter(
      textDirection: textDirection,
      textScaleFactor: textScaleFactor,
      text: textSpan,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.start,
      locale: locale,
      ellipsis: ellipsis,
      strutStyle: strutStyle,
      textHeightBehavior: textHeightBehavior,
      textWidthBasis: textWidthBasis ?? TextWidthBasis.parent,
    )..layout(
        minWidth: minWidth,
        maxWidth: maxWidth,
      );
    return tp.size;
  }
}
