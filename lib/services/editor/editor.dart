import 'package:dartz/dartz.dart' show Option;
import 'package:flutter/widgets.dart' as widgets;

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'editor.freezed.dart';

/// Represents an editor, that is a 2D orthonormal system that contains [Element]s.
///
/// The origin of this 2D system is [Offset.zero]. So the offset of any element in the editor is
/// determined relative to this offset.
///
/// The elements are characterized each by a unique [ElementId].
@freezed
class Editor with _$Editor {
  /// Creates an editor from the provided [ISet] of [Element]s.
  const factory Editor({
    /// The elements in the editor.
    required ISet<Element> elements,
  }) = _Editor;

  /// Creates an empty editor.
  factory Editor.empty() => Editor(elements: ISet());

  /// Convenient factory to create an editor from the provided [Set] of [Element]s.
  factory Editor.fromSet(Set<Element> elements) => Editor(elements: elements.lock);
}

/// Represents the ID of an [Element] in the [Editor]
typedef ElementId = String;

/// The allowed extensions of text files that the editor can work with.
IList<String> get allowedTextFilesExtensions => IList(const ['txt']);

/// The minimum side size of an editor's element.
const double minElementSideSize = 30.0;

/// Represents an element in the editor, which is uniquely identified by its id.
@freezed
class Element with _$Element {
  const factory Element({
    /// The unique id of the element.
    required ElementId id,

    /// The properties of the element.
    required ElementProperties properties,

    /// The rectangle in which the element is contained.
    required widgets.Rect rect,

    /// The order this element should be shown amongst other elements in the editor.
    required int showOrder,
  }) = _Element;
}

/// Represents the specific properties of an element in the editor.
@freezed
class ElementProperties with _$ElementProperties {
  const ElementProperties._();

  /// Properties of an image contained in a file.
  const factory ElementProperties.fileImageProperties({
    /// The path of the file containing this image.
    required String sourceFilePath,
  }) = FileImageProperties;

  /// Properties of a text that does not change.
  const factory ElementProperties.staticTextProperties({
    /// The value of the text.
    required String text,

    /// The style of the text.
    widgets.TextStyle? textStyle,

    /// The alignment of the text.
    widgets.TextAlign? textAlign,
  }) = StaticTextProperties;

  /// Properties of a text that will be generated from a source file.
  const factory ElementProperties.variableTextProperties({
    /// The text to show in the editing phase.
    required String placeHolderText,

    /// The style of the text.
    widgets.TextStyle? textStyle,

    /// The alignment of the text.
    widgets.TextAlign? textAlign,

    /// The path of the file containing the text to be generated.
    required Option<String> sourceFilePath,
  }) = VariableTextProperties;

  bool get isFileImageProperties => this is FileImageProperties;
  bool get isStaticTextProperties => this is StaticTextProperties;
  bool get isVariableTextProperties => this is VariableTextProperties;
}
