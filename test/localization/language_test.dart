import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:photo_editor/localization/language.dart';
import 'package:test/test.dart';

void main() {
  group('languages', () {
    test('Should return the correct list of languages.', () {
      expect(Language.languages, IList(const [Language.en, Language.ar]));
    });
  });
}
