import 'dart:ui';
import 'package:dartz/dartz.dart' hide ISet, IList;
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:photo_editor/services/editor/editor_extension.dart';
import 'package:test/test.dart';

void main() {
  group('addElement', () {
    // image element
    Element image = Element(
      id: '1',
      showOrder: 1,
      elementType: const ElementType.image(path: 'image.jpeg'),
      rect: Offset.zero & const Size(100, 100),
    );

    // text element
    Element text = Element(
      id: '2',
      showOrder: 2,
      elementType: const ElementType.text(value: 'Hello'),
      rect: Offset.zero & const Size(100, 100),
    );

    test('Adding an element to the editor does not alter the original editor',
        () {
      final Editor editor = Editor.empty();
      editor.addElement(image);
      expect(editor, Editor.empty());
    });

    test('Can add all kinds of elements to the editor', () {
      // Add image to empty editor
      expect(
        Editor.empty().addElement(image),
        Editor.fromSet({image}),
      );

      // Add text to empty editor
      expect(
        Editor.empty().addElement(text),
        Editor.fromSet({text}),
      );

      // Add image then text to empty editor
      expect(
        Editor.empty().addElement(image).addElement(text),
        Editor.fromSet({image, text}),
      );
    });
    test('Adding an element with existing id returns same editor', () {
      //element with same id as image
      Element similarImage = image.copyWith(showOrder: image.showOrder + 1);
      expect(
        Editor.empty().addElement(image).addElement(similarImage),
        Editor.fromSet({image}),
      );
    });
  });

  group('updateElement', () {
    // image element
    Element image = Element(
      id: '1',
      showOrder: 1,
      elementType: const ElementType.image(path: 'image.jpeg'),
      rect: Offset.zero & const Size(100, 100),
    );

    // updated image with same id
    Element updatedImage = image.copyWith(showOrder: image.showOrder + 1);

    test('Can update an element which has id that exists in the editor', () {
      expect(Editor.fromSet({image}).updateElement(updatedImage),
          Editor.fromSet({updatedImage}));
    });
    test(
        'Updating an element which does not exist in the editor add it to the editor',
        () {
      expect(
        Editor.empty().updateElement(image),
        Editor.fromSet({image}),
      );
    });
  });

  group('removeElement', () {
    Element image = Element(
      id: '1',
      showOrder: 1,
      elementType: const ElementType.image(path: 'image.jpeg'),
      rect: Offset.zero & const Size(100, 100),
    );

    test('Can remove an existing element from the editor', () {
      expect(Editor.fromSet({image}).removeElement(image.id), Editor.empty());
    });

    test(
        'Removing an element whose id does not exist from the editor returns same editor',
        () {
      final Editor editor = Editor.fromSet({image});
      expect(editor.removeElement('-1'), editor);
    });
  });

  group('elementsSortedByShowOrder', () {
    test('Should return the elements sorted by id for non empty editor', () {
      // image element
      Element image = Element(
        id: '1',
        showOrder: 1,
        elementType: const ElementType.image(path: 'image.jpeg'),
        rect: Offset.zero & const Size(100, 100),
      );

      // text element
      Element text = Element(
        id: '2',
        showOrder: 2,
        elementType: const ElementType.text(value: 'Hello'),
        rect: Offset.zero & const Size(100, 100),
      );

      expect(
        Editor.fromSet({image, text}).elementsSortedByShowOrder,
        IList([image, text]),
      );
    });
    test('Should return an empty list for empty editor', () {
      expect(Editor.empty().elementsSortedByShowOrder, IList());
    });
  });
  group('elementsAtPosition', () {
    // image element
    Element image = Element(
      id: '1',
      showOrder: 1,
      elementType: const ElementType.image(path: 'image.jpeg'),
      rect: const Offset(50, 50) & const Size(100, 100),
    );

    // text element
    Element text = Element(
      id: '2',
      showOrder: 2,
      elementType: const ElementType.text(value: 'Hello'),
      rect: const Offset(250, 250) & const Size(100, 100),
    );

    Element image2 = Element(
      id: '3',
      showOrder: 3,
      elementType: const ElementType.image(path: 'image2.jpeg'),
      rect: const Offset(60, 60) & const Size(100, 100),
    );

    final Editor editor = Editor.fromSet({image, text});

    test('Should return the elements at the position when they exist', () {
      expect(
        editor.elementsAtPosition(const Offset(75, 75)),
        IList([image]),
      );
      expect(
        editor.elementsAtPosition(const Offset(300, 300)),
        IList([text]),
      );
    });
    test('Returned elements must be ordered by their show order', () {
      final Editor editor = Editor.fromSet({image, text, image2});
      expect(editor.elementsAtPosition(const Offset(65, 65)),
          IList([image, image2]));
    });
    test('Should return none() when the element at the position does not exist',
        () {
      // when the editor is empty
      expect(
          Editor.empty().elementsAtPosition(const Offset(100, 100)), IList());
      // when the editor is not empty
      expect(editor.elementsAtPosition(const Offset(10, 10)), IList());
    });
  });

  group('elementById', () {
    test('Should return the element if it exists', () {
      Element image = Element(
        id: '1',
        showOrder: 1,
        elementType: const ElementType.image(path: 'image.jpeg'),
        rect: const Offset(50, 50) & const Size(100, 100),
      );
      expect(Editor.fromSet({image}).elementById(image.id), some(image));
    });
    test('Should return none if the element does not exist', () {
      expect(Editor.empty().elementById('1'), none());
    });
  });
}
