import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:test/test.dart';

void main() {
  test('Should return the correct allowedFileExtensions', () {
    expect(allowedFileExtensions, IList(const ['jpeg', 'png']));
  });
}
