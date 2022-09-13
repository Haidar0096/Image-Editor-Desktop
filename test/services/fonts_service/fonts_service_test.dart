import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:photo_editor/services/fonts_service/fonts_service.dart';

part 'fonts_service_test_constants.dart';

void main() {
  group('getAvailableFontsNames', () {
    test('Should return the correct font names', () {
      List<String> fonts = FontsService.getAvailableFontsNames();
      expect(fonts, expectedAvailableFontsNames);
    });
  });
  group('getFont', () {
    testWidgets('Should return the correct text style for a given font', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp());
      await tester.pumpAndSettle();
      for (int i = 0; i < expectedAvailableFontsNames.length; i++) {
        TextStyle textStyle = FontsService.getFont(expectedAvailableFontsNames[i]);
        expect(textStyle.fontFamily, expectedFontFamilyNames[i]);
      }
    });
  });
}
