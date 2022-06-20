import 'dart:collection';

import 'package:photo_editor/localization/language.dart';
import 'package:test/test.dart';

void main() {
  group('languages', () {
    test('Should return the correct list of language codes.', () {
      expect(Language.values.map((lang) => lang.languageCode),
          UnmodifiableListView(['en', 'ar']));
    });
  });
}
