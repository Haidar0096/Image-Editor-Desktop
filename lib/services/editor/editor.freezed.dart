// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'editor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditorTearOff {
  const _$EditorTearOff();

  _Editor call({required ISet<Element> elements}) {
    return _Editor(
      elements: elements,
    );
  }
}

/// @nodoc
const $Editor = _$EditorTearOff();

/// @nodoc
mixin _$Editor {
  ISet<Element> get elements => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditorCopyWith<Editor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorCopyWith<$Res> {
  factory $EditorCopyWith(Editor value, $Res Function(Editor) then) =
      _$EditorCopyWithImpl<$Res>;
  $Res call({ISet<Element> elements});
}

/// @nodoc
class _$EditorCopyWithImpl<$Res> implements $EditorCopyWith<$Res> {
  _$EditorCopyWithImpl(this._value, this._then);

  final Editor _value;
  // ignore: unused_field
  final $Res Function(Editor) _then;

  @override
  $Res call({
    Object? elements = freezed,
  }) {
    return _then(_value.copyWith(
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as ISet<Element>,
    ));
  }
}

/// @nodoc
abstract class _$EditorCopyWith<$Res> implements $EditorCopyWith<$Res> {
  factory _$EditorCopyWith(_Editor value, $Res Function(_Editor) then) =
      __$EditorCopyWithImpl<$Res>;
  @override
  $Res call({ISet<Element> elements});
}

/// @nodoc
class __$EditorCopyWithImpl<$Res> extends _$EditorCopyWithImpl<$Res>
    implements _$EditorCopyWith<$Res> {
  __$EditorCopyWithImpl(_Editor _value, $Res Function(_Editor) _then)
      : super(_value, (v) => _then(v as _Editor));

  @override
  _Editor get _value => super._value as _Editor;

  @override
  $Res call({
    Object? elements = freezed,
  }) {
    return _then(_Editor(
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as ISet<Element>,
    ));
  }
}

/// @nodoc

class _$_Editor implements _Editor {
  const _$_Editor({required this.elements});

  @override
  final ISet<Element> elements;

  @override
  String toString() {
    return 'Editor(elements: $elements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Editor &&
            const DeepCollectionEquality().equals(other.elements, elements));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(elements));

  @JsonKey(ignore: true)
  @override
  _$EditorCopyWith<_Editor> get copyWith =>
      __$EditorCopyWithImpl<_Editor>(this, _$identity);
}

abstract class _Editor implements Editor {
  const factory _Editor({required ISet<Element> elements}) = _$_Editor;

  @override
  ISet<Element> get elements;
  @override
  @JsonKey(ignore: true)
  _$EditorCopyWith<_Editor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ElementTearOff {
  const _$ElementTearOff();

  _Element call(
      {required String id,
      required ElementType elementType,
      required ui.Rect rect,
      required int showOrder}) {
    return _Element(
      id: id,
      elementType: elementType,
      rect: rect,
      showOrder: showOrder,
    );
  }
}

/// @nodoc
const $Element = _$ElementTearOff();

/// @nodoc
mixin _$Element {
  String get id => throw _privateConstructorUsedError;
  ElementType get elementType => throw _privateConstructorUsedError;
  ui.Rect get rect => throw _privateConstructorUsedError;
  int get showOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ElementCopyWith<Element> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementCopyWith<$Res> {
  factory $ElementCopyWith(Element value, $Res Function(Element) then) =
      _$ElementCopyWithImpl<$Res>;
  $Res call({String id, ElementType elementType, ui.Rect rect, int showOrder});

  $ElementTypeCopyWith<$Res> get elementType;
}

/// @nodoc
class _$ElementCopyWithImpl<$Res> implements $ElementCopyWith<$Res> {
  _$ElementCopyWithImpl(this._value, this._then);

  final Element _value;
  // ignore: unused_field
  final $Res Function(Element) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? elementType = freezed,
    Object? rect = freezed,
    Object? showOrder = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      elementType: elementType == freezed
          ? _value.elementType
          : elementType // ignore: cast_nullable_to_non_nullable
              as ElementType,
      rect: rect == freezed
          ? _value.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as ui.Rect,
      showOrder: showOrder == freezed
          ? _value.showOrder
          : showOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ElementTypeCopyWith<$Res> get elementType {
    return $ElementTypeCopyWith<$Res>(_value.elementType, (value) {
      return _then(_value.copyWith(elementType: value));
    });
  }
}

/// @nodoc
abstract class _$ElementCopyWith<$Res> implements $ElementCopyWith<$Res> {
  factory _$ElementCopyWith(_Element value, $Res Function(_Element) then) =
      __$ElementCopyWithImpl<$Res>;
  @override
  $Res call({String id, ElementType elementType, ui.Rect rect, int showOrder});

  @override
  $ElementTypeCopyWith<$Res> get elementType;
}

/// @nodoc
class __$ElementCopyWithImpl<$Res> extends _$ElementCopyWithImpl<$Res>
    implements _$ElementCopyWith<$Res> {
  __$ElementCopyWithImpl(_Element _value, $Res Function(_Element) _then)
      : super(_value, (v) => _then(v as _Element));

  @override
  _Element get _value => super._value as _Element;

  @override
  $Res call({
    Object? id = freezed,
    Object? elementType = freezed,
    Object? rect = freezed,
    Object? showOrder = freezed,
  }) {
    return _then(_Element(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      elementType: elementType == freezed
          ? _value.elementType
          : elementType // ignore: cast_nullable_to_non_nullable
              as ElementType,
      rect: rect == freezed
          ? _value.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as ui.Rect,
      showOrder: showOrder == freezed
          ? _value.showOrder
          : showOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Element implements _Element {
  const _$_Element(
      {required this.id,
      required this.elementType,
      required this.rect,
      required this.showOrder});

  @override
  final String id;
  @override
  final ElementType elementType;
  @override
  final ui.Rect rect;
  @override
  final int showOrder;

  @override
  String toString() {
    return 'Element(id: $id, elementType: $elementType, rect: $rect, showOrder: $showOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Element &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.elementType, elementType) &&
            const DeepCollectionEquality().equals(other.rect, rect) &&
            const DeepCollectionEquality().equals(other.showOrder, showOrder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(elementType),
      const DeepCollectionEquality().hash(rect),
      const DeepCollectionEquality().hash(showOrder));

  @JsonKey(ignore: true)
  @override
  _$ElementCopyWith<_Element> get copyWith =>
      __$ElementCopyWithImpl<_Element>(this, _$identity);
}

abstract class _Element implements Element {
  const factory _Element(
      {required String id,
      required ElementType elementType,
      required ui.Rect rect,
      required int showOrder}) = _$_Element;

  @override
  String get id;
  @override
  ElementType get elementType;
  @override
  ui.Rect get rect;
  @override
  int get showOrder;
  @override
  @JsonKey(ignore: true)
  _$ElementCopyWith<_Element> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ElementTypeTearOff {
  const _$ElementTypeTearOff();

  ImageElementType image({required String path}) {
    return ImageElementType(
      path: path,
    );
  }

  TextElementType text({required String value, material.TextStyle? textStyle}) {
    return TextElementType(
      value: value,
      textStyle: textStyle,
    );
  }

  VariableTextElementType variableText(
      {required String placeHolderText,
      material.TextStyle? textStyle,
      required String sourceFilePath}) {
    return VariableTextElementType(
      placeHolderText: placeHolderText,
      textStyle: textStyle,
      sourceFilePath: sourceFilePath,
    );
  }
}

/// @nodoc
const $ElementType = _$ElementTypeTearOff();

/// @nodoc
mixin _$ElementType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) image,
    required TResult Function(String value, material.TextStyle? textStyle) text,
    required TResult Function(String placeHolderText,
            material.TextStyle? textStyle, String sourceFilePath)
        variableText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path)? image,
    TResult Function(String value, material.TextStyle? textStyle)? text,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? image,
    TResult Function(String value, material.TextStyle? textStyle)? text,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageElementType value) image,
    required TResult Function(TextElementType value) text,
    required TResult Function(VariableTextElementType value) variableText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImageElementType value)? image,
    TResult Function(TextElementType value)? text,
    TResult Function(VariableTextElementType value)? variableText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageElementType value)? image,
    TResult Function(TextElementType value)? text,
    TResult Function(VariableTextElementType value)? variableText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementTypeCopyWith<$Res> {
  factory $ElementTypeCopyWith(
          ElementType value, $Res Function(ElementType) then) =
      _$ElementTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ElementTypeCopyWithImpl<$Res> implements $ElementTypeCopyWith<$Res> {
  _$ElementTypeCopyWithImpl(this._value, this._then);

  final ElementType _value;
  // ignore: unused_field
  final $Res Function(ElementType) _then;
}

/// @nodoc
abstract class $ImageElementTypeCopyWith<$Res> {
  factory $ImageElementTypeCopyWith(
          ImageElementType value, $Res Function(ImageElementType) then) =
      _$ImageElementTypeCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$ImageElementTypeCopyWithImpl<$Res>
    extends _$ElementTypeCopyWithImpl<$Res>
    implements $ImageElementTypeCopyWith<$Res> {
  _$ImageElementTypeCopyWithImpl(
      ImageElementType _value, $Res Function(ImageElementType) _then)
      : super(_value, (v) => _then(v as ImageElementType));

  @override
  ImageElementType get _value => super._value as ImageElementType;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(ImageElementType(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageElementType implements ImageElementType {
  const _$ImageElementType({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'ElementType.image(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImageElementType &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  $ImageElementTypeCopyWith<ImageElementType> get copyWith =>
      _$ImageElementTypeCopyWithImpl<ImageElementType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) image,
    required TResult Function(String value, material.TextStyle? textStyle) text,
    required TResult Function(String placeHolderText,
            material.TextStyle? textStyle, String sourceFilePath)
        variableText,
  }) {
    return image(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path)? image,
    TResult Function(String value, material.TextStyle? textStyle)? text,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableText,
  }) {
    return image?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? image,
    TResult Function(String value, material.TextStyle? textStyle)? text,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableText,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageElementType value) image,
    required TResult Function(TextElementType value) text,
    required TResult Function(VariableTextElementType value) variableText,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImageElementType value)? image,
    TResult Function(TextElementType value)? text,
    TResult Function(VariableTextElementType value)? variableText,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageElementType value)? image,
    TResult Function(TextElementType value)? text,
    TResult Function(VariableTextElementType value)? variableText,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class ImageElementType implements ElementType {
  const factory ImageElementType({required String path}) = _$ImageElementType;

  String get path;
  @JsonKey(ignore: true)
  $ImageElementTypeCopyWith<ImageElementType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextElementTypeCopyWith<$Res> {
  factory $TextElementTypeCopyWith(
          TextElementType value, $Res Function(TextElementType) then) =
      _$TextElementTypeCopyWithImpl<$Res>;
  $Res call({String value, material.TextStyle? textStyle});
}

/// @nodoc
class _$TextElementTypeCopyWithImpl<$Res>
    extends _$ElementTypeCopyWithImpl<$Res>
    implements $TextElementTypeCopyWith<$Res> {
  _$TextElementTypeCopyWithImpl(
      TextElementType _value, $Res Function(TextElementType) _then)
      : super(_value, (v) => _then(v as TextElementType));

  @override
  TextElementType get _value => super._value as TextElementType;

  @override
  $Res call({
    Object? value = freezed,
    Object? textStyle = freezed,
  }) {
    return _then(TextElementType(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      textStyle: textStyle == freezed
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as material.TextStyle?,
    ));
  }
}

/// @nodoc

class _$TextElementType implements TextElementType {
  const _$TextElementType({required this.value, this.textStyle});

  @override
  final String value;
  @override
  final material.TextStyle? textStyle;

  @override
  String toString() {
    return 'ElementType.text(value: $value, textStyle: $textStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextElementType &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.textStyle, textStyle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(textStyle));

  @JsonKey(ignore: true)
  @override
  $TextElementTypeCopyWith<TextElementType> get copyWith =>
      _$TextElementTypeCopyWithImpl<TextElementType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) image,
    required TResult Function(String value, material.TextStyle? textStyle) text,
    required TResult Function(String placeHolderText,
            material.TextStyle? textStyle, String sourceFilePath)
        variableText,
  }) {
    return text(value, textStyle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path)? image,
    TResult Function(String value, material.TextStyle? textStyle)? text,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableText,
  }) {
    return text?.call(value, textStyle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? image,
    TResult Function(String value, material.TextStyle? textStyle)? text,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableText,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(value, textStyle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageElementType value) image,
    required TResult Function(TextElementType value) text,
    required TResult Function(VariableTextElementType value) variableText,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImageElementType value)? image,
    TResult Function(TextElementType value)? text,
    TResult Function(VariableTextElementType value)? variableText,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageElementType value)? image,
    TResult Function(TextElementType value)? text,
    TResult Function(VariableTextElementType value)? variableText,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class TextElementType implements ElementType {
  const factory TextElementType(
      {required String value,
      material.TextStyle? textStyle}) = _$TextElementType;

  String get value;
  material.TextStyle? get textStyle;
  @JsonKey(ignore: true)
  $TextElementTypeCopyWith<TextElementType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariableTextElementTypeCopyWith<$Res> {
  factory $VariableTextElementTypeCopyWith(VariableTextElementType value,
          $Res Function(VariableTextElementType) then) =
      _$VariableTextElementTypeCopyWithImpl<$Res>;
  $Res call(
      {String placeHolderText,
      material.TextStyle? textStyle,
      String sourceFilePath});
}

/// @nodoc
class _$VariableTextElementTypeCopyWithImpl<$Res>
    extends _$ElementTypeCopyWithImpl<$Res>
    implements $VariableTextElementTypeCopyWith<$Res> {
  _$VariableTextElementTypeCopyWithImpl(VariableTextElementType _value,
      $Res Function(VariableTextElementType) _then)
      : super(_value, (v) => _then(v as VariableTextElementType));

  @override
  VariableTextElementType get _value => super._value as VariableTextElementType;

  @override
  $Res call({
    Object? placeHolderText = freezed,
    Object? textStyle = freezed,
    Object? sourceFilePath = freezed,
  }) {
    return _then(VariableTextElementType(
      placeHolderText: placeHolderText == freezed
          ? _value.placeHolderText
          : placeHolderText // ignore: cast_nullable_to_non_nullable
              as String,
      textStyle: textStyle == freezed
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as material.TextStyle?,
      sourceFilePath: sourceFilePath == freezed
          ? _value.sourceFilePath
          : sourceFilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VariableTextElementType implements VariableTextElementType {
  const _$VariableTextElementType(
      {required this.placeHolderText,
      this.textStyle,
      required this.sourceFilePath});

  @override
  final String placeHolderText;
  @override
  final material.TextStyle? textStyle;
  @override
  final String sourceFilePath;

  @override
  String toString() {
    return 'ElementType.variableText(placeHolderText: $placeHolderText, textStyle: $textStyle, sourceFilePath: $sourceFilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VariableTextElementType &&
            const DeepCollectionEquality()
                .equals(other.placeHolderText, placeHolderText) &&
            const DeepCollectionEquality().equals(other.textStyle, textStyle) &&
            const DeepCollectionEquality()
                .equals(other.sourceFilePath, sourceFilePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(placeHolderText),
      const DeepCollectionEquality().hash(textStyle),
      const DeepCollectionEquality().hash(sourceFilePath));

  @JsonKey(ignore: true)
  @override
  $VariableTextElementTypeCopyWith<VariableTextElementType> get copyWith =>
      _$VariableTextElementTypeCopyWithImpl<VariableTextElementType>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) image,
    required TResult Function(String value, material.TextStyle? textStyle) text,
    required TResult Function(String placeHolderText,
            material.TextStyle? textStyle, String sourceFilePath)
        variableText,
  }) {
    return variableText(placeHolderText, textStyle, sourceFilePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path)? image,
    TResult Function(String value, material.TextStyle? textStyle)? text,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableText,
  }) {
    return variableText?.call(placeHolderText, textStyle, sourceFilePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? image,
    TResult Function(String value, material.TextStyle? textStyle)? text,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableText,
    required TResult orElse(),
  }) {
    if (variableText != null) {
      return variableText(placeHolderText, textStyle, sourceFilePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageElementType value) image,
    required TResult Function(TextElementType value) text,
    required TResult Function(VariableTextElementType value) variableText,
  }) {
    return variableText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImageElementType value)? image,
    TResult Function(TextElementType value)? text,
    TResult Function(VariableTextElementType value)? variableText,
  }) {
    return variableText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageElementType value)? image,
    TResult Function(TextElementType value)? text,
    TResult Function(VariableTextElementType value)? variableText,
    required TResult orElse(),
  }) {
    if (variableText != null) {
      return variableText(this);
    }
    return orElse();
  }
}

abstract class VariableTextElementType implements ElementType {
  const factory VariableTextElementType(
      {required String placeHolderText,
      material.TextStyle? textStyle,
      required String sourceFilePath}) = _$VariableTextElementType;

  String get placeHolderText;
  material.TextStyle? get textStyle;
  String get sourceFilePath;
  @JsonKey(ignore: true)
  $VariableTextElementTypeCopyWith<VariableTextElementType> get copyWith =>
      throw _privateConstructorUsedError;
}
