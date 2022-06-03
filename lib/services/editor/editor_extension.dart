import 'dart:ui';

import 'package:dartz/dartz.dart' hide ISet, IList;
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:collection/collection.dart';

extension EditorExtension on Editor {
  /// Adds an element to the editor. Returns the same editor if the id
  /// of the added element already exists in the editor.
  Editor addElement(Element element) {
    if (elements.any((e) => e.id == element.id)) {
      return this;
    }
    return copyWith(elements: elements.add(element));
  }

  /// Updates the element in the editor which has the provided element's id.
  /// If no such element exists, then the element will be added to the editor.
  Editor updateElement(Element updated) {
    return copyWith(
      elements: elements.removeWhere((e) => e.id == updated.id).add(updated),
    );
  }

  /// Removes an element from the editor. Returns the same editor if the id does not exist.
  Editor removeElement(ElementId id) {
    return copyWith(elements: elements.removeWhere((e) => e.id == id));
  }

  /// Translates the given element's rect by the given offset.
  /// Returns the same editor if the id of the element was not found.
  Editor translateElement(ElementId id, Offset delta) {
    return optionOf(elements.where((e) => e.id == id).firstOrNull).fold(
      () => this,
      (element) => updateElement(
          element.copyWith(rect: element.rect.translate(delta.dx, delta.dy))),
    );
  }

  /// Removes all the elements from the editor.
  Editor clear() {
    return copyWith(elements: elements.clear());
  }

  /// Returns an option of the element with the given id
  Option<Element> elementById(ElementId id) =>
      optionOf(elements.where((element) => element.id == id).firstOrNull);

  /// Returns the elements sorted by their show order, or an empty list if the editor
  /// is empty.
  IList<Element> get elementsSortedByShowOrder =>
      elements.sorted((a, b) => a.showOrder.compareTo(b.showOrder)).lock;

  /// Returns a list of the elements present at a given position sorted by their show order,
  /// or an empty list if the editor is empty.
  IList<Element> elementsAtPosition(Offset position) => elements
      .where((element) {
        return element.rect.contains(position);
      })
      .sorted((a, b) => a.showOrder.compareTo(b.showOrder))
      .toList()
      .lock;
}
