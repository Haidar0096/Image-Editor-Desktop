import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:test/test.dart';

void main() {
  test('Should return the correct allowedImageFilesExtensions', () {
    expect(allowedImageFilesExtensions, IList(const ['jpeg', 'png', 'jpg']));
  });
  test('Should return the correct allowedTextFilesExtensions', () {
    expect(allowedTextFilesExtensions, IList(const ['txt']));
  });
}
