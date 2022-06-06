import 'dart:ui' as ui;

import 'package:flutter/material.dart' as material;

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'editor.freezed.dart';

/// Represents an editor, that is a 2D orthonormal system that contains [Element]s.
/// The origin of this 2D system is [Offset.zero]. So the offset of any element in the editor is
/// determined relative to this offset.
@freezed
class Editor with _$Editor {
  const factory Editor({
    required ISet<Element> elements,
  }) = _Editor;

  factory Editor.empty() => Editor(elements: ISet());

  /// Convenient factory to create an editor from a set of elements.
  factory Editor.fromSet(Set<Element> elements) {
    return Editor(elements: elements.lock);
  }
}

typedef ElementId = String;

/// The allowed extensions of image files that the editor can work with.
IList<String> get allowedFileExtensions => IList(const ['jpeg', 'png']);

/// Represents an element in the editor, which is uniquely identified by its id.
@freezed
class Element with _$Element {
  const factory Element({
    required ElementId id,
    required ElementType elementType,
    required ui.Rect rect,
    required int showOrder,
  }) = _Element;
}

@freezed
class ElementType with _$ElementType {
  const factory ElementType.image({required String path}) = ImageElementType;

  const factory ElementType.text({
    required String value,
    material.TextStyle? textStyle,
  }) = TextElementType;

  const factory ElementType.variableText({
    required String placeHolderText,
    material.TextStyle? textStyle,
    required String sourceFilePath,
  }) = VariableTextElementType;
}
