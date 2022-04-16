// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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

  _Editor call(
      {required ui.Rect rect, required IMap<String, Element> elements}) {
    return _Editor(
      rect: rect,
      elements: elements,
    );
  }
}

/// @nodoc
const $Editor = _$EditorTearOff();

/// @nodoc
mixin _$Editor {
  ui.Rect get rect => throw _privateConstructorUsedError;
  IMap<String, Element> get elements => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditorCopyWith<Editor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorCopyWith<$Res> {
  factory $EditorCopyWith(Editor value, $Res Function(Editor) then) =
      _$EditorCopyWithImpl<$Res>;
  $Res call({ui.Rect rect, IMap<String, Element> elements});
}

/// @nodoc
class _$EditorCopyWithImpl<$Res> implements $EditorCopyWith<$Res> {
  _$EditorCopyWithImpl(this._value, this._then);

  final Editor _value;
  // ignore: unused_field
  final $Res Function(Editor) _then;

  @override
  $Res call({
    Object? rect = freezed,
    Object? elements = freezed,
  }) {
    return _then(_value.copyWith(
      rect: rect == freezed
          ? _value.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as ui.Rect,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as IMap<String, Element>,
    ));
  }
}

/// @nodoc
abstract class _$EditorCopyWith<$Res> implements $EditorCopyWith<$Res> {
  factory _$EditorCopyWith(_Editor value, $Res Function(_Editor) then) =
      __$EditorCopyWithImpl<$Res>;
  @override
  $Res call({ui.Rect rect, IMap<String, Element> elements});
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
    Object? rect = freezed,
    Object? elements = freezed,
  }) {
    return _then(_Editor(
      rect: rect == freezed
          ? _value.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as ui.Rect,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as IMap<String, Element>,
    ));
  }
}

/// @nodoc

class _$_Editor implements _Editor {
  const _$_Editor({required this.rect, required this.elements});

  @override
  final ui.Rect rect;
  @override
  final IMap<String, Element> elements;

  @override
  String toString() {
    return 'Editor(rect: $rect, elements: $elements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Editor &&
            const DeepCollectionEquality().equals(other.rect, rect) &&
            const DeepCollectionEquality().equals(other.elements, elements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rect),
      const DeepCollectionEquality().hash(elements));

  @JsonKey(ignore: true)
  @override
  _$EditorCopyWith<_Editor> get copyWith =>
      __$EditorCopyWithImpl<_Editor>(this, _$identity);
}

abstract class _Editor implements Editor {
  const factory _Editor(
      {required ui.Rect rect,
      required IMap<String, Element> elements}) = _$_Editor;

  @override
  ui.Rect get rect;
  @override
  IMap<String, Element> get elements;
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
      required ui.Rect rect}) {
    return _Element(
      id: id,
      elementType: elementType,
      rect: rect,
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

  @JsonKey(ignore: true)
  $ElementCopyWith<Element> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementCopyWith<$Res> {
  factory $ElementCopyWith(Element value, $Res Function(Element) then) =
      _$ElementCopyWithImpl<$Res>;
  $Res call({String id, ElementType elementType, ui.Rect rect});

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
  $Res call({String id, ElementType elementType, ui.Rect rect});

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
    ));
  }
}

/// @nodoc

class _$_Element implements _Element {
  const _$_Element(
      {required this.id, required this.elementType, required this.rect});

  @override
  final String id;
  @override
  final ElementType elementType;
  @override
  final ui.Rect rect;

  @override
  String toString() {
    return 'Element(id: $id, elementType: $elementType, rect: $rect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Element &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.elementType, elementType) &&
            const DeepCollectionEquality().equals(other.rect, rect));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(elementType),
      const DeepCollectionEquality().hash(rect));

  @JsonKey(ignore: true)
  @override
  _$ElementCopyWith<_Element> get copyWith =>
      __$ElementCopyWithImpl<_Element>(this, _$identity);
}

abstract class _Element implements Element {
  const factory _Element(
      {required String id,
      required ElementType elementType,
      required ui.Rect rect}) = _$_Element;

  @override
  String get id;
  @override
  ElementType get elementType;
  @override
  ui.Rect get rect;
  @override
  @JsonKey(ignore: true)
  _$ElementCopyWith<_Element> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ElementTypeTearOff {
  const _$ElementTypeTearOff();

  _Image image({required io.File file}) {
    return _Image(
      file: file,
    );
  }

  _Text text(
      {required String value,
      ui.TextDirection textDirection = ui.TextDirection.ltr,
      required double fontSize,
      required ui.FontStyle fontStyle,
      required ui.FontWeight fontWeight}) {
    return _Text(
      value: value,
      textDirection: textDirection,
      fontSize: fontSize,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
    );
  }
}

/// @nodoc
const $ElementType = _$ElementTypeTearOff();

/// @nodoc
mixin _$ElementType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(io.File file) image,
    required TResult Function(String value, ui.TextDirection textDirection,
            double fontSize, ui.FontStyle fontStyle, ui.FontWeight fontWeight)
        text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(io.File file)? image,
    TResult Function(String value, ui.TextDirection textDirection,
            double fontSize, ui.FontStyle fontStyle, ui.FontWeight fontWeight)?
        text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(io.File file)? image,
    TResult Function(String value, ui.TextDirection textDirection,
            double fontSize, ui.FontStyle fontStyle, ui.FontWeight fontWeight)?
        text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Image value) image,
    required TResult Function(_Text value) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Image value)? image,
    TResult Function(_Text value)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Image value)? image,
    TResult Function(_Text value)? text,
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
abstract class _$ImageCopyWith<$Res> {
  factory _$ImageCopyWith(_Image value, $Res Function(_Image) then) =
      __$ImageCopyWithImpl<$Res>;
  $Res call({io.File file});
}

/// @nodoc
class __$ImageCopyWithImpl<$Res> extends _$ElementTypeCopyWithImpl<$Res>
    implements _$ImageCopyWith<$Res> {
  __$ImageCopyWithImpl(_Image _value, $Res Function(_Image) _then)
      : super(_value, (v) => _then(v as _Image));

  @override
  _Image get _value => super._value as _Image;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_Image(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as io.File,
    ));
  }
}

/// @nodoc

class _$_Image implements _Image {
  const _$_Image({required this.file});

  @override
  final io.File file;

  @override
  String toString() {
    return 'ElementType.image(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Image &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$ImageCopyWith<_Image> get copyWith =>
      __$ImageCopyWithImpl<_Image>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(io.File file) image,
    required TResult Function(String value, ui.TextDirection textDirection,
            double fontSize, ui.FontStyle fontStyle, ui.FontWeight fontWeight)
        text,
  }) {
    return image(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(io.File file)? image,
    TResult Function(String value, ui.TextDirection textDirection,
            double fontSize, ui.FontStyle fontStyle, ui.FontWeight fontWeight)?
        text,
  }) {
    return image?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(io.File file)? image,
    TResult Function(String value, ui.TextDirection textDirection,
            double fontSize, ui.FontStyle fontStyle, ui.FontWeight fontWeight)?
        text,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Image value) image,
    required TResult Function(_Text value) text,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Image value)? image,
    TResult Function(_Text value)? text,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Image value)? image,
    TResult Function(_Text value)? text,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class _Image implements ElementType {
  const factory _Image({required io.File file}) = _$_Image;

  io.File get file;
  @JsonKey(ignore: true)
  _$ImageCopyWith<_Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TextCopyWith<$Res> {
  factory _$TextCopyWith(_Text value, $Res Function(_Text) then) =
      __$TextCopyWithImpl<$Res>;
  $Res call(
      {String value,
      ui.TextDirection textDirection,
      double fontSize,
      ui.FontStyle fontStyle,
      ui.FontWeight fontWeight});
}

/// @nodoc
class __$TextCopyWithImpl<$Res> extends _$ElementTypeCopyWithImpl<$Res>
    implements _$TextCopyWith<$Res> {
  __$TextCopyWithImpl(_Text _value, $Res Function(_Text) _then)
      : super(_value, (v) => _then(v as _Text));

  @override
  _Text get _value => super._value as _Text;

  @override
  $Res call({
    Object? value = freezed,
    Object? textDirection = freezed,
    Object? fontSize = freezed,
    Object? fontStyle = freezed,
    Object? fontWeight = freezed,
  }) {
    return _then(_Text(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      textDirection: textDirection == freezed
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as ui.TextDirection,
      fontSize: fontSize == freezed
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double,
      fontStyle: fontStyle == freezed
          ? _value.fontStyle
          : fontStyle // ignore: cast_nullable_to_non_nullable
              as ui.FontStyle,
      fontWeight: fontWeight == freezed
          ? _value.fontWeight
          : fontWeight // ignore: cast_nullable_to_non_nullable
              as ui.FontWeight,
    ));
  }
}

/// @nodoc

class _$_Text implements _Text {
  const _$_Text(
      {required this.value,
      this.textDirection = ui.TextDirection.ltr,
      required this.fontSize,
      required this.fontStyle,
      required this.fontWeight});

  @override
  final String value;
  @JsonKey()
  @override
  final ui.TextDirection textDirection;
  @override
  final double fontSize;
  @override
  final ui.FontStyle fontStyle;
  @override
  final ui.FontWeight fontWeight;

  @override
  String toString() {
    return 'ElementType.text(value: $value, textDirection: $textDirection, fontSize: $fontSize, fontStyle: $fontStyle, fontWeight: $fontWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Text &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.textDirection, textDirection) &&
            const DeepCollectionEquality().equals(other.fontSize, fontSize) &&
            const DeepCollectionEquality().equals(other.fontStyle, fontStyle) &&
            const DeepCollectionEquality()
                .equals(other.fontWeight, fontWeight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(textDirection),
      const DeepCollectionEquality().hash(fontSize),
      const DeepCollectionEquality().hash(fontStyle),
      const DeepCollectionEquality().hash(fontWeight));

  @JsonKey(ignore: true)
  @override
  _$TextCopyWith<_Text> get copyWith =>
      __$TextCopyWithImpl<_Text>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(io.File file) image,
    required TResult Function(String value, ui.TextDirection textDirection,
            double fontSize, ui.FontStyle fontStyle, ui.FontWeight fontWeight)
        text,
  }) {
    return text(value, textDirection, fontSize, fontStyle, fontWeight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(io.File file)? image,
    TResult Function(String value, ui.TextDirection textDirection,
            double fontSize, ui.FontStyle fontStyle, ui.FontWeight fontWeight)?
        text,
  }) {
    return text?.call(value, textDirection, fontSize, fontStyle, fontWeight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(io.File file)? image,
    TResult Function(String value, ui.TextDirection textDirection,
            double fontSize, ui.FontStyle fontStyle, ui.FontWeight fontWeight)?
        text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(value, textDirection, fontSize, fontStyle, fontWeight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Image value) image,
    required TResult Function(_Text value) text,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Image value)? image,
    TResult Function(_Text value)? text,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Image value)? image,
    TResult Function(_Text value)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class _Text implements ElementType {
  const factory _Text(
      {required String value,
      ui.TextDirection textDirection,
      required double fontSize,
      required ui.FontStyle fontStyle,
      required ui.FontWeight fontWeight}) = _$_Text;

  String get value;
  ui.TextDirection get textDirection;
  double get fontSize;
  ui.FontStyle get fontStyle;
  ui.FontWeight get fontWeight;
  @JsonKey(ignore: true)
  _$TextCopyWith<_Text> get copyWith => throw _privateConstructorUsedError;
}
