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
      properties: const FileImageProperties(sourceFilePath: 'image.jpeg'),
      rect: Offset.zero & const Size(100, 100),
    );

    // static text element
    Element staticText = Element(
      id: '2',
      showOrder: 2,
      properties: const StaticTextProperties(text: 'Hello'),
      rect: Offset.zero & const Size(100, 100),
    );

    Element variableText = Element(
      id: '3',
      showOrder: 3,
      properties: const VariableTextProperties(
        placeHolderText: 'Generated Text',
        sourceFilePath: 'text.txt',
      ),
      rect: Offset.zero & const Size(100, 100),
    );

    test('Adding an element does not alter the original editor', () {
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

      // Add static text to empty editor
      expect(
        Editor.empty().addElement(staticText),
        Editor.fromSet({staticText}),
      );

      // Add variable text to empty editor
      expect(
        Editor.empty().addElement(variableText),
        Editor.fromSet({variableText}),
      );

      // Add multiple elements to empty editor
      expect(
        Editor.empty()
            .addElement(image)
            .addElement(staticText)
            .addElement(variableText),
        Editor.fromSet({image, staticText, variableText}),
      );
    });
    test('Adding an element with existing id returns same editor', () {
      // element with same id as image
      Element similarImage = image.copyWith(showOrder: image.showOrder + 1);

      expect(
        Editor.empty().addElement(image).addElement(similarImage),
        Editor.fromSet({image}),
      );

      expect(
        Editor.empty().addElement(image).addElement(image),
        Editor.fromSet({image}),
      );
    });
  });

  group('updateElement', () {
    // image element
    Element image = Element(
      id: '1',
      showOrder: 1,
      properties: const FileImageProperties(sourceFilePath: 'image.jpeg'),
      rect: Offset.zero & const Size(100, 100),
    );

    // updated image with same id
    Element updatedImage = image.copyWith(showOrder: image.showOrder + 1);

    test('Updating an element does not alter the original editor', () {
      final Editor editor = Editor.empty();
      editor.updateElement(image.copyWith(showOrder: image.showOrder + 1));
      expect(editor, Editor.empty());
    });

    test('Can update an element which has id that exists in the editor', () {
      expect(
        Editor.fromSet({image}).updateElement(updatedImage),
        Editor.fromSet({updatedImage}),
      );
    });
    test(
        'Updating an element which does not exist in the editor adds it to the editor',
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
      properties: const FileImageProperties(sourceFilePath: 'image.jpeg'),
      rect: Offset.zero & const Size(100, 100),
    );

    test('Removing an element does not alter the original editor', () {
      final Editor editor = Editor.fromSet({image});
      editor.removeElement(image.id);
      expect(editor, Editor.fromSet({image}));
    });

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

  group('translateElement', () {
    // set up used variables
    Element image = Element(
      id: '1',
      showOrder: 1,
      properties: const FileImageProperties(sourceFilePath: 'image.jpeg'),
      rect: const Offset(50, 50) & const Size(100, 100),
    );

    test('Translating an element does not alter the original editor', () {
      final Editor editor = Editor.fromSet({image});
      editor.translateElement(image.id, const Offset(100, 100));
      expect(editor, Editor.fromSet({image}));
    });

    test('Can translate an element that is in the editor', () {
      expect(
        Editor.fromSet({image}).translateElement(
          image.id,
          const Offset(100, 100),
        ),
        Editor.fromSet({
          image.copyWith(rect: const Offset(150, 150) & const Size(100, 100)),
        }),
      );
    });
    test(
        'Translating an element which is not in the editor returns the same editor',
        () {
      final Editor editor = Editor.fromSet({});
      expect(
        editor.translateElement(image.id, const Offset(100, 100)),
        editor,
      );
    });
  });

  group('clear', () {
    test('Clearing the editor does not alter the original editor', () {
      // set up used variables
      Element image = Element(
        id: '1',
        showOrder: 1,
        properties: const FileImageProperties(sourceFilePath: 'image.jpeg'),
        rect: const Offset(50, 50) & const Size(100, 100),
      );

      final Editor editor = Editor.fromSet({image});
      editor.clear();
      expect(editor, Editor.fromSet({image}));
    });

    test('Should clear the editor if it is not empty.', () {
      // set up used variables
      Element image = Element(
        id: '1',
        showOrder: 1,
        properties: const FileImageProperties(sourceFilePath: 'image.jpeg'),
        rect: const Offset(50, 50) & const Size(100, 100),
      );
      Editor editor = Editor.fromSet({image});
      expect(
        editor.clear(),
        Editor.empty(),
      );
    });
  });

  group('elementById', () {
    test('Should return the element if it exists', () {
      Element image = Element(
        id: '1',
        showOrder: 1,
        properties: const FileImageProperties(sourceFilePath: 'image.jpeg'),
        rect: const Offset(50, 50) & const Size(100, 100),
      );
      expect(Editor.fromSet({image}).elementById(image.id), some(image));
    });
    test('Should return none if the element does not exist', () {
      expect(Editor.empty().elementById('1'), none());
    });
  });

  group('elementsSortedByShowOrder', () {
    test('Should return the elements sorted by id for non empty editor', () {
      // image element
      Element image = Element(
        id: '1',
        showOrder: 1,
        properties: const FileImageProperties(sourceFilePath: 'image.jpeg'),
        rect: Offset.zero & const Size(100, 100),
      );

      // static text element
      Element staticText = Element(
        id: '2',
        showOrder: 2,
        properties: const StaticTextProperties(text: 'Hello'),
        rect: Offset.zero & const Size(100, 100),
      );

      Element variableText = Element(
        id: '3',
        showOrder: 3,
        properties: const VariableTextProperties(
          placeHolderText: 'Generated Text',
          sourceFilePath: 'text.txt',
        ),
        rect: Offset.zero & const Size(100, 100),
      );

      expect(
        Editor.fromSet({image, staticText, variableText})
            .elementsSortedByShowOrder,
        IList([image, staticText, variableText]),
      );
    });
    test('Should return an empty list for empty editor', () {
      expect(
        Editor.empty().elementsSortedByShowOrder,
        IList(),
      );
    });
  });
  group('elementsAtPosition', () {
    // image element
    Element image = Element(
      id: '1',
      showOrder: 1,
      properties: const FileImageProperties(sourceFilePath: 'image.jpeg'),
      rect: Offset.zero & const Size(100, 100),
    );

    // static text element
    Element staticText = Element(
      id: '2',
      showOrder: 2,
      properties: const StaticTextProperties(text: 'Hello'),
      rect: Offset.zero & const Size(200, 200),
    );

    Element variableText = Element(
      id: '3',
      showOrder: 3,
      properties: const VariableTextProperties(
        placeHolderText: 'Generated Text',
        sourceFilePath: 'text.txt',
      ),
      rect: const Offset(150, 150) & const Size(200, 200),
    );

    final Editor editor = Editor.fromSet({image, staticText, variableText});

    test('Should return the elements at the position when they exist', () {
      expect(
        editor.elementsAtPosition(Offset.zero),
        IList([image, staticText]),
      );
      expect(
        editor.elementsAtPosition(const Offset(300, 300)),
        IList([variableText]),
      );
    });
    test('Returned elements must be ordered by their show order', () {
      final Editor editor = Editor.fromSet({image, staticText, variableText});
      expect(editor.elementsAtPosition(const Offset(65, 65)),
          IList([image, staticText]));
    });
    test('Should return none() when the element at the position does not exist',
        () {
      // when the editor is empty
      expect(
        Editor.empty().elementsAtPosition(const Offset(100, 100)),
        IList(),
      );
      // when the editor is not empty
      expect(
        editor.elementsAtPosition(const Offset(500, 500)),
        IList(),
      );
    });
  });
}
