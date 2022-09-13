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
  group('unCamelCase', () {
    test('Should return correct results.', () {
      String s1 = 'helloWorld';
      String s2 = 'helloworld';
      String s3 = 'helloWorldIAmACamelCaseString';
      String s4 = 'HelloWorld';
      String s5 = 'I am not a camel case string';

      expect(s1.unCamelCase(), 'Hello World');
      expect(s1.unCamelCase(capitalize: false), 'hello world');

      expect(s2.unCamelCase(), 'helloworld');
      expect(s2.unCamelCase(capitalize: false), 'helloworld');

      expect(s3.unCamelCase(), 'Hello World I Am A Camel Case String');
      expect(s3.unCamelCase(capitalize: false),
          'hello world i am a camel case string');

      expect(s4.unCamelCase(), 'Hello World');
      expect(s4.unCamelCase(capitalize: false), 'hello world');

      expect(s5.unCamelCase(), 'I am not a camel case string');
      expect(s5.unCamelCase(capitalize: false), 'I am not a camel case string');
    });
  });
  group('isAlphaNumericUnderScore', () {
    test('Should return the correct results.', () {
      String s1 = 'helloWorld';
      String s2 = 'helloworld';
      String s3 = 'helloWorld1';
      String s4 = '1helloWorld';
      String s5 = '1helloWorld_';
      String s6 = 'not alpha numeric';

      expect(s1.isAlphaNumericUnderScore(), true);
      expect(s2.isAlphaNumericUnderScore(), true);
      expect(s3.isAlphaNumericUnderScore(), true);
      expect(s4.isAlphaNumericUnderScore(), true);
      expect(s5.isAlphaNumericUnderScore(), true);
      expect(s6.isAlphaNumericUnderScore(), false);
    });
  });
}
