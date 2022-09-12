import 'dart:collection';

import 'package:photo_editor/localization/language.dart';
import 'package:test/test.dart';

void main() {
  group('languages', () {
    test('Should return the correct list of languages.', () {
      expect(
        Language.values,
        [Language.english, Language.arabic],
      );
    });
  });
  group('LanguageExtension', () {
    test('languageCode should return the correct string.', () {
      expect(
        Language.values.map((lang) => lang.languageCode),
        UnmodifiableListView(['en', 'ar']),
      );
    });
  });
}
