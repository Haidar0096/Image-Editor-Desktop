import 'package:dartz/dartz.dart' hide IMap;
import 'package:photo_editor/extensions/rect_extension.dart';
import 'package:photo_editor/services/editor/editor.dart';

extension EditorExtension on Editor {
  /// Adds an element to the editor.
  /// Fails if:
  /// - the element id already exists
  /// - the element rect is not within bounds of the editor rect
  Either<String, Editor> addElement(Element element) {
    if (elements.containsKey(element.id)) {
      return const Left(
          'Cannot add an element with an existing key to the editor');
    }
    if (!rect.containsRect(element.rect)) {
      return const Left(
          'Cannot add an element which is not bounded within the editor rect.');
    }
    return Right(copyWith(elements: elements.add(element.id, element)));
  }

  /// Updates an element in the editor.
  /// Fails if:
  /// - the element id does not exist
  /// - the element rect is not within bounds of the editor rect
  Either<String, Editor> updateElement(Element updated) {
    if (!elements.containsKey(updated.id)) {
      return const Left(
          'Cannot update an element that does not exist in the editor.');
    }
    if (!rect.containsRect(updated.rect)) {
      return const Left(
          'Cannot update an element to have a rect that is not within the editor rect bounds.');
    }
    return Right(
        copyWith(elements: elements.update(updated.id, (value) => updated)));
  }

  /// Removes an element from the editor.
  /// Fails if:
  /// - the element with id = [id] does not exist in the editor.
  Either<String, Editor> removeElement(ElementId id) {
    if (!elements.containsKey(id)) {
      return const Left(
          'Cannot remove an element whose id already does not exist in the editor.');
    }
    return Right(copyWith(elements: elements.remove(id)));
  }
}
