import 'dart:io' as io;
import 'dart:ui' as ui;
import 'package:dartz/dartz.dart' hide IMap;
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:photo_editor/services/editor/editor_extension.dart';
import 'package:test/test.dart';

void main() {
  group('addElement', () {
    // initialize used variables in tests
    // image element
    Element image = Element(
      id: '1',
      elementType: ElementType.image(file: io.File('image.jpeg')),
      rect: ui.Offset.zero & const ui.Size(100, 100),
    );

    // text element
    Element text = Element(
      id: '2',
      elementType: ElementType.image(file: io.File('image.jpeg')),
      rect: ui.Offset.zero & const ui.Size(100, 100),
    );

    // image element with rect unbounded within editor rect
    Element unboundedImage = Element(
      id: '3',
      elementType: ElementType.image(file: io.File('hello.jpeg')),
      rect: ui.Offset.zero & const ui.Size(1000, 1000),
    );

    // editor
    Editor editor = Editor.empty(
      rect: ui.Offset.zero & const ui.Size(500, 500),
    );

    test('Can add all kinds of elements to the editor', () {
      // Add image to empty editor
      expect(
        editor.addElement(image),
        Right(editor.copyWith(elements: IMap({image.id: image}))),
      );

      // Add text to empty editor
      expect(
        editor.addElement(text),
        Right(editor.copyWith(elements: IMap({text.id: text}))),
      );

      // Add image then text to empty editor
      expect(
        editor
            .addElement(image)
            .fold((failure) {}, (editor) => editor.addElement(text)),
        Right(
            editor.copyWith(elements: IMap({image.id: image, text.id: text}))),
      );
    });
    test('Adding an element with existing id fails', () {
      expect(
        editor
            .addElement(image)
            .fold((failure) {}, (editor) => editor.addElement(image)),
        const Left('Cannot add an element with an existing key to the editor'),
      );
    });
    test('Adding an element not bounded within the editor rect fails', () {
      expect(
        editor.addElement(unboundedImage),
        const Left(
            'Cannot add an element which is not bounded within the editor rect.'),
      );
    });
  });

  group('updateElement', () {
    // initialize used variables in tests
    // image element
    Element image = Element(
      id: '1',
      elementType: ElementType.image(file: io.File('image.jpeg')),
      rect: ui.Offset.zero & const ui.Size(100, 100),
    );

    // updated image
    Element imageUpdated = image.copyWith(rect: image.rect.translate(100, 100));

    // updated image that does not belong to the editor
    Element imageUpdatedNonExistent = image.copyWith(id: '-1');

    // updated invalid image
    Element imageUpdatedInvalid =
        image.copyWith(rect: ui.Offset.zero & const ui.Size(1000, 1000));

    // editor
    Editor editor = Editor.empty(
      rect: ui.Offset.zero & const ui.Size(500, 500),
    );

    test('Can update an element in the editor', () {
      expect(
        editor
            .addElement(image)
            .fold((failure) {}, (editor) => editor.updateElement(imageUpdated)),
        Right(editor.copyWith(elements: IMap({imageUpdated.id: imageUpdated}))),
      );
    });
    test('Updating an element which does not exist in the editor fails', () {
      expect(
        editor.addElement(image).fold((failure) {},
            (editor) => editor.updateElement(imageUpdatedNonExistent)),
        const Left('Cannot update an element that does not exist in the editor.'),
      );
    });
    test(
        'Updating an element to have rect outside bounds of the editor rect fails',
        () {
      expect(
        editor.addElement(image).fold((failure) {},
            (editor) => editor.updateElement(imageUpdatedInvalid)),
        const Left(
            'Cannot update an element to have a rect that is not within the editor rect bounds.'),
      );
    });
  });

  group('removeElement', () {
    Element image = Element(
      id: '1',
      elementType: ElementType.image(file: io.File('image.jpeg')),
      rect: ui.Offset.zero & const ui.Size(100, 100),
    );

    Element nonExistingElement = image.copyWith(id: '-1');

    // editor
    Editor editor = Editor.empty(
      rect: ui.Offset.zero & const ui.Size(500, 500),
    );

    test('Can remove an element from the editor', () {
      expect(
        editor
            .addElement(image)
            .fold((failure) {}, (editor) => editor.removeElement(image.id)),
        Right(editor),
      );
    });

    test('Cannot remove an element whose id does not exist from the editor',
        () {
      expect(
        editor.addElement(image).fold((failure) {},
            (editor) => editor.removeElement(nonExistingElement.id)),
        const Left(
            'Cannot remove an element whose id already does not exist in the editor.'),
      );
    });
  });
}
