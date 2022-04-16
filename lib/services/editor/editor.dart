import 'dart:ui' as ui;
import 'dart:io' as io;

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'editor.freezed.dart';

/// Represents an editor.
/// - [rect] : the [Rect] that represents this editor
/// - [elements] : an immutable map of elements contained in this editor
@freezed
class Editor with _$Editor {
  const factory Editor({
    required ui.Rect rect,
    required IMap<ElementId, Element> elements,
  }) = _Editor;

  factory Editor.empty({required ui.Rect rect}) =>
      Editor(rect: rect, elements: IMap());
}

typedef ElementId = String;

@freezed
class Element with _$Element {
  const factory Element({
    required ElementId id,
    required ElementType elementType,
    required ui.Rect rect,
  }) = _Element;
}

@freezed
class ElementType with _$ElementType {
  const factory ElementType.image({required io.File file}) = _Image;

  const factory ElementType.text({
    required String value,
    @Default(ui.TextDirection.ltr) ui.TextDirection textDirection,
    required double fontSize,
    required ui.FontStyle fontStyle,
    required ui.FontWeight fontWeight,
  }) = _Text;
}
