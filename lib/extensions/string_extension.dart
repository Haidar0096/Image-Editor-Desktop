import 'package:flutter/painting.dart';

extension StringExtension on String {
  /// Returns an approximate size this text will have once placed in a Text widget with the provided properties.
  /// The [minWidth], [textScaleFactor], [TextDirection], and [maxWidth] properties are needed to provide more
  /// accurate results.
  ///
  /// For more info about the parameters, see the [TextPainter] and [TextSpan] constructors.
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

  /// Returns a space-separated string of this string if it is in the camel case
  /// (with the first letter of each word capitalized if specified). If it is not in camel case, returns the original string.
  String unCamelCase({bool capitalize = true}) {
    final RegExp camelCaseRegex = RegExp(
        '([a-z]|[A-Z])([A-Z0-9]*[a-z][a-z0-9]*[A-Z]|[a-z0-9]*[A-Z][A-Z0-9]*[a-z])[A-Za-z0-9]*');
    if (!camelCaseRegex.hasMatch(this)) {
      return this;
    }
    String result = toString()
        .split('.')
        .last
        // insert a space before all caps
        .replaceAllMapped(RegExp('([A-Z])'),
            (m) => ' ${capitalize ? m[0] : m[0]!.toLowerCase()}')
        // uppercase the first character
        .replaceAllMapped(RegExp('^.'),
            (m) => capitalize ? m[0].toString().toUpperCase() : m[0]!);
    if (RegExp('[A-Z]').hasMatch(this)) {
      // remove unwanted space before the first letter
      result = result.replaceFirst(RegExp('^ '), '');
    }
    return result;
  }

  /// Returns true if this string is alphanumeric with underscores.
  bool isAlphaNumericUnderScore() {
    return RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(this);
  }
}
