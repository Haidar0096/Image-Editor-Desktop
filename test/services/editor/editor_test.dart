import 'dart:ui';

import 'package:dartz/dartz.dart' show some;
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:test/test.dart';

void main() {
  group('Editor', () {
    test('Should return the correct allowedTextFilesExtensions', () {
      expect(allowedTextFilesExtensions, IList(const ['txt']));
    });
    test('Should return the correct minElementSideSize', () => expect(minElementSideSize, 30.0));
  });

  group('Element', () {
    test('Should return the correct response when asked about the element properties', () {
      Rect rect = const Rect.fromLTWH(0, 0, 100, 100);
      Element fileImage = Element(
        id: '1',
        showOrder: 1,
        rect: rect,
        properties: const FileImageProperties(sourceFilePath: 'hi.jpeg'),
      );
      Element staticText = Element(
        id: '2',
        showOrder: 2,
        rect: rect,
        properties: const StaticTextProperties(text: 'hi'),
      );
      Element variableText = Element(
        id: '3',
        showOrder: 3,
        rect: rect,
        properties: VariableTextProperties(sourceFilePath: some('hi.txt'), placeHolderText: 'hi.txt'),
      );

      expect(fileImage.properties.isFileImageProperties, true);
      expect(staticText.properties.isStaticTextProperties, true);
      expect(variableText.properties.isVariableTextProperties, true);
    });
  });
}
