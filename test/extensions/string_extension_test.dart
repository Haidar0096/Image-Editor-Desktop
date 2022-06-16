import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:photo_editor/extensions/string_extension.dart';

void main() {
  group('textSize', () {
    testWidgets(
        'Should return a correct approximate size of the text with a small error.',
        (WidgetTester tester) async {
      // set up the text and its properties
      const String text = '''
          Hello world, this is a text that is nice and I am testing it right now, okay this seems
          stupid but I don't know what to do or how to test it in another way, so pardon me please! !@#\$%^&*()
          stupid but I don't know what to do or how to test it in another way, so pardon me please! !@#\$%^&*()
          stupid but I don't know what to do or how to test it in another way, so pardon me please! !@#\$%^&*()
          stupid but I don't know what to do or how to test it in another way, so pardon me please! !@#\$%^&*()
          stupid but I don't know what to do or how to test it in another way, so pardon me please! !@#\$%^&*()
      ''';

      const TextStyle textStyle = TextStyle(color: Colors.red, fontSize: 40);
      const Locale locale = Locale.fromSubtags(languageCode: 'en');
      const int maxLines = 4;
      const TextDirection textDirection = TextDirection.ltr;
      const TextAlign textAlign = TextAlign.center;
      const double textScaleFactor = 0.5;
      const TextWidthBasis textWidthBasis = TextWidthBasis.longestLine;
      const StrutStyle strutStyle = StrutStyle();
      const TextHeightBehavior textHeightBehavior = TextHeightBehavior();
      const String ellipsis = '...........';
      const bool softWrap = true;
      const String semanticsLabel = 'This is a text';
      const TextOverflow overflow = TextOverflow.ellipsis;

      // set up max allowed error difference
      const double maxError = 5.0;

      // create an app with the text and its properties
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: Text(
              text,
              textDirection: textDirection,
              textScaleFactor: textScaleFactor,
              style: textStyle,
              maxLines: maxLines,
              textAlign: textAlign,
              locale: locale,
              textWidthBasis: textWidthBasis,
              softWrap: softWrap,
              strutStyle: strutStyle,
              textHeightBehavior: textHeightBehavior,
              semanticsLabel: semanticsLabel,
              overflow: overflow,
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      // the text's width and height constraints
      const minWidth = 0.0;
      final maxWidth = tester.getSize(find.byType(Scaffold)).width;

      // calculate the expected text size
      final Size calculatedTextSize = text.textSize(
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        minWidth: minWidth,
        maxWidth: maxWidth,
        textStyle: textStyle,
        maxLines: maxLines,
        textAlign: textAlign,
        locale: locale,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        strutStyle: strutStyle,
        ellipsis: ellipsis,
      );

      // the actual text size
      final Size actualTextSize = tester.getSize(find.byType(Text));

      // expect the 2 sizes are within the allowed error range
      expect(
        (actualTextSize.width - calculatedTextSize.width).abs() < maxError,
        true,
      );

      expect(
        (actualTextSize.height - calculatedTextSize.height).abs() < maxError,
        true,
      );
    });
  });
}
