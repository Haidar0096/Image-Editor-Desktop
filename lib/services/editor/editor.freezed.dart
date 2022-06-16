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
  /// The elements in the editor.
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

  /// The elements in the editor.
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

  /// The elements in the editor.
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
      required ElementProperties properties,
      required material.Rect rect,
      required int showOrder}) {
    return _Element(
      id: id,
      properties: properties,
      rect: rect,
      showOrder: showOrder,
    );
  }
}

/// @nodoc
const $Element = _$ElementTearOff();

/// @nodoc
mixin _$Element {
  /// The unique id of the element.
  String get id => throw _privateConstructorUsedError;

  /// The properties of the element.
  ElementProperties get properties => throw _privateConstructorUsedError;

  /// The rectangle in which the element is contained.
  material.Rect get rect => throw _privateConstructorUsedError;

  /// The order this element should be shown amongst other elements in the editor.
  int get showOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ElementCopyWith<Element> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementCopyWith<$Res> {
  factory $ElementCopyWith(Element value, $Res Function(Element) then) =
      _$ElementCopyWithImpl<$Res>;
  $Res call(
      {String id,
      ElementProperties properties,
      material.Rect rect,
      int showOrder});

  $ElementPropertiesCopyWith<$Res> get properties;
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
    Object? properties = freezed,
    Object? rect = freezed,
    Object? showOrder = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as ElementProperties,
      rect: rect == freezed
          ? _value.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as material.Rect,
      showOrder: showOrder == freezed
          ? _value.showOrder
          : showOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ElementPropertiesCopyWith<$Res> get properties {
    return $ElementPropertiesCopyWith<$Res>(_value.properties, (value) {
      return _then(_value.copyWith(properties: value));
    });
  }
}

/// @nodoc
abstract class _$ElementCopyWith<$Res> implements $ElementCopyWith<$Res> {
  factory _$ElementCopyWith(_Element value, $Res Function(_Element) then) =
      __$ElementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      ElementProperties properties,
      material.Rect rect,
      int showOrder});

  @override
  $ElementPropertiesCopyWith<$Res> get properties;
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
    Object? properties = freezed,
    Object? rect = freezed,
    Object? showOrder = freezed,
  }) {
    return _then(_Element(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as ElementProperties,
      rect: rect == freezed
          ? _value.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as material.Rect,
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
      required this.properties,
      required this.rect,
      required this.showOrder});

  @override

  /// The unique id of the element.
  final String id;
  @override

  /// The properties of the element.
  final ElementProperties properties;
  @override

  /// The rectangle in which the element is contained.
  final material.Rect rect;
  @override

  /// The order this element should be shown amongst other elements in the editor.
  final int showOrder;

  @override
  String toString() {
    return 'Element(id: $id, properties: $properties, rect: $rect, showOrder: $showOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Element &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.properties, properties) &&
            const DeepCollectionEquality().equals(other.rect, rect) &&
            const DeepCollectionEquality().equals(other.showOrder, showOrder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(properties),
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
      required ElementProperties properties,
      required material.Rect rect,
      required int showOrder}) = _$_Element;

  @override

  /// The unique id of the element.
  String get id;
  @override

  /// The properties of the element.
  ElementProperties get properties;
  @override

  /// The rectangle in which the element is contained.
  material.Rect get rect;
  @override

  /// The order this element should be shown amongst other elements in the editor.
  int get showOrder;
  @override
  @JsonKey(ignore: true)
  _$ElementCopyWith<_Element> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ElementPropertiesTearOff {
  const _$ElementPropertiesTearOff();

  FileImageProperties fileImageProperties({required String sourceFilePath}) {
    return FileImageProperties(
      sourceFilePath: sourceFilePath,
    );
  }

  StaticTextProperties staticTextProperties(
      {required String text, material.TextStyle? textStyle}) {
    return StaticTextProperties(
      text: text,
      textStyle: textStyle,
    );
  }

  VariableTextProperties variableTextProperties(
      {required String placeHolderText,
      material.TextStyle? textStyle,
      required String sourceFilePath}) {
    return VariableTextProperties(
      placeHolderText: placeHolderText,
      textStyle: textStyle,
      sourceFilePath: sourceFilePath,
    );
  }
}

/// @nodoc
const $ElementProperties = _$ElementPropertiesTearOff();

/// @nodoc
mixin _$ElementProperties {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceFilePath) fileImageProperties,
    required TResult Function(String text, material.TextStyle? textStyle)
        staticTextProperties,
    required TResult Function(String placeHolderText,
            material.TextStyle? textStyle, String sourceFilePath)
        variableTextProperties,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, material.TextStyle? textStyle)?
        staticTextProperties,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableTextProperties,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, material.TextStyle? textStyle)?
        staticTextProperties,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableTextProperties,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileImageProperties value) fileImageProperties,
    required TResult Function(StaticTextProperties value) staticTextProperties,
    required TResult Function(VariableTextProperties value)
        variableTextProperties,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileImageProperties value)? fileImageProperties,
    TResult Function(StaticTextProperties value)? staticTextProperties,
    TResult Function(VariableTextProperties value)? variableTextProperties,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileImageProperties value)? fileImageProperties,
    TResult Function(StaticTextProperties value)? staticTextProperties,
    TResult Function(VariableTextProperties value)? variableTextProperties,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementPropertiesCopyWith<$Res> {
  factory $ElementPropertiesCopyWith(
          ElementProperties value, $Res Function(ElementProperties) then) =
      _$ElementPropertiesCopyWithImpl<$Res>;
}

/// @nodoc
class _$ElementPropertiesCopyWithImpl<$Res>
    implements $ElementPropertiesCopyWith<$Res> {
  _$ElementPropertiesCopyWithImpl(this._value, this._then);

  final ElementProperties _value;
  // ignore: unused_field
  final $Res Function(ElementProperties) _then;
}

/// @nodoc
abstract class $FileImagePropertiesCopyWith<$Res> {
  factory $FileImagePropertiesCopyWith(
          FileImageProperties value, $Res Function(FileImageProperties) then) =
      _$FileImagePropertiesCopyWithImpl<$Res>;
  $Res call({String sourceFilePath});
}

/// @nodoc
class _$FileImagePropertiesCopyWithImpl<$Res>
    extends _$ElementPropertiesCopyWithImpl<$Res>
    implements $FileImagePropertiesCopyWith<$Res> {
  _$FileImagePropertiesCopyWithImpl(
      FileImageProperties _value, $Res Function(FileImageProperties) _then)
      : super(_value, (v) => _then(v as FileImageProperties));

  @override
  FileImageProperties get _value => super._value as FileImageProperties;

  @override
  $Res call({
    Object? sourceFilePath = freezed,
  }) {
    return _then(FileImageProperties(
      sourceFilePath: sourceFilePath == freezed
          ? _value.sourceFilePath
          : sourceFilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FileImageProperties implements FileImageProperties {
  const _$FileImageProperties({required this.sourceFilePath});

  @override

  /// The path of the file containing this image.
  final String sourceFilePath;

  @override
  String toString() {
    return 'ElementProperties.fileImageProperties(sourceFilePath: $sourceFilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileImageProperties &&
            const DeepCollectionEquality()
                .equals(other.sourceFilePath, sourceFilePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sourceFilePath));

  @JsonKey(ignore: true)
  @override
  $FileImagePropertiesCopyWith<FileImageProperties> get copyWith =>
      _$FileImagePropertiesCopyWithImpl<FileImageProperties>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceFilePath) fileImageProperties,
    required TResult Function(String text, material.TextStyle? textStyle)
        staticTextProperties,
    required TResult Function(String placeHolderText,
            material.TextStyle? textStyle, String sourceFilePath)
        variableTextProperties,
  }) {
    return fileImageProperties(sourceFilePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, material.TextStyle? textStyle)?
        staticTextProperties,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableTextProperties,
  }) {
    return fileImageProperties?.call(sourceFilePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, material.TextStyle? textStyle)?
        staticTextProperties,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableTextProperties,
    required TResult orElse(),
  }) {
    if (fileImageProperties != null) {
      return fileImageProperties(sourceFilePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileImageProperties value) fileImageProperties,
    required TResult Function(StaticTextProperties value) staticTextProperties,
    required TResult Function(VariableTextProperties value)
        variableTextProperties,
  }) {
    return fileImageProperties(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileImageProperties value)? fileImageProperties,
    TResult Function(StaticTextProperties value)? staticTextProperties,
    TResult Function(VariableTextProperties value)? variableTextProperties,
  }) {
    return fileImageProperties?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileImageProperties value)? fileImageProperties,
    TResult Function(StaticTextProperties value)? staticTextProperties,
    TResult Function(VariableTextProperties value)? variableTextProperties,
    required TResult orElse(),
  }) {
    if (fileImageProperties != null) {
      return fileImageProperties(this);
    }
    return orElse();
  }
}

abstract class FileImageProperties implements ElementProperties {
  const factory FileImageProperties({required String sourceFilePath}) =
      _$FileImageProperties;

  /// The path of the file containing this image.
  String get sourceFilePath;
  @JsonKey(ignore: true)
  $FileImagePropertiesCopyWith<FileImageProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaticTextPropertiesCopyWith<$Res> {
  factory $StaticTextPropertiesCopyWith(StaticTextProperties value,
          $Res Function(StaticTextProperties) then) =
      _$StaticTextPropertiesCopyWithImpl<$Res>;
  $Res call({String text, material.TextStyle? textStyle});
}

/// @nodoc
class _$StaticTextPropertiesCopyWithImpl<$Res>
    extends _$ElementPropertiesCopyWithImpl<$Res>
    implements $StaticTextPropertiesCopyWith<$Res> {
  _$StaticTextPropertiesCopyWithImpl(
      StaticTextProperties _value, $Res Function(StaticTextProperties) _then)
      : super(_value, (v) => _then(v as StaticTextProperties));

  @override
  StaticTextProperties get _value => super._value as StaticTextProperties;

  @override
  $Res call({
    Object? text = freezed,
    Object? textStyle = freezed,
  }) {
    return _then(StaticTextProperties(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      textStyle: textStyle == freezed
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as material.TextStyle?,
    ));
  }
}

/// @nodoc

class _$StaticTextProperties implements StaticTextProperties {
  const _$StaticTextProperties({required this.text, this.textStyle});

  @override

  /// The value of the text.
  final String text;
  @override

  /// The style of the text.
  final material.TextStyle? textStyle;

  @override
  String toString() {
    return 'ElementProperties.staticTextProperties(text: $text, textStyle: $textStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StaticTextProperties &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.textStyle, textStyle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(textStyle));

  @JsonKey(ignore: true)
  @override
  $StaticTextPropertiesCopyWith<StaticTextProperties> get copyWith =>
      _$StaticTextPropertiesCopyWithImpl<StaticTextProperties>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceFilePath) fileImageProperties,
    required TResult Function(String text, material.TextStyle? textStyle)
        staticTextProperties,
    required TResult Function(String placeHolderText,
            material.TextStyle? textStyle, String sourceFilePath)
        variableTextProperties,
  }) {
    return staticTextProperties(text, textStyle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, material.TextStyle? textStyle)?
        staticTextProperties,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableTextProperties,
  }) {
    return staticTextProperties?.call(text, textStyle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, material.TextStyle? textStyle)?
        staticTextProperties,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableTextProperties,
    required TResult orElse(),
  }) {
    if (staticTextProperties != null) {
      return staticTextProperties(text, textStyle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileImageProperties value) fileImageProperties,
    required TResult Function(StaticTextProperties value) staticTextProperties,
    required TResult Function(VariableTextProperties value)
        variableTextProperties,
  }) {
    return staticTextProperties(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileImageProperties value)? fileImageProperties,
    TResult Function(StaticTextProperties value)? staticTextProperties,
    TResult Function(VariableTextProperties value)? variableTextProperties,
  }) {
    return staticTextProperties?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileImageProperties value)? fileImageProperties,
    TResult Function(StaticTextProperties value)? staticTextProperties,
    TResult Function(VariableTextProperties value)? variableTextProperties,
    required TResult orElse(),
  }) {
    if (staticTextProperties != null) {
      return staticTextProperties(this);
    }
    return orElse();
  }
}

abstract class StaticTextProperties implements ElementProperties {
  const factory StaticTextProperties(
      {required String text,
      material.TextStyle? textStyle}) = _$StaticTextProperties;

  /// The value of the text.
  String get text;

  /// The style of the text.
  material.TextStyle? get textStyle;
  @JsonKey(ignore: true)
  $StaticTextPropertiesCopyWith<StaticTextProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariableTextPropertiesCopyWith<$Res> {
  factory $VariableTextPropertiesCopyWith(VariableTextProperties value,
          $Res Function(VariableTextProperties) then) =
      _$VariableTextPropertiesCopyWithImpl<$Res>;
  $Res call(
      {String placeHolderText,
      material.TextStyle? textStyle,
      String sourceFilePath});
}

/// @nodoc
class _$VariableTextPropertiesCopyWithImpl<$Res>
    extends _$ElementPropertiesCopyWithImpl<$Res>
    implements $VariableTextPropertiesCopyWith<$Res> {
  _$VariableTextPropertiesCopyWithImpl(VariableTextProperties _value,
      $Res Function(VariableTextProperties) _then)
      : super(_value, (v) => _then(v as VariableTextProperties));

  @override
  VariableTextProperties get _value => super._value as VariableTextProperties;

  @override
  $Res call({
    Object? placeHolderText = freezed,
    Object? textStyle = freezed,
    Object? sourceFilePath = freezed,
  }) {
    return _then(VariableTextProperties(
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

class _$VariableTextProperties implements VariableTextProperties {
  const _$VariableTextProperties(
      {required this.placeHolderText,
      this.textStyle,
      required this.sourceFilePath});

  @override

  /// The text to show in the editing phase.
  final String placeHolderText;
  @override

  /// The style of the text.
  final material.TextStyle? textStyle;
  @override

  /// The path of the file containing the text to be generated.
  final String sourceFilePath;

  @override
  String toString() {
    return 'ElementProperties.variableTextProperties(placeHolderText: $placeHolderText, textStyle: $textStyle, sourceFilePath: $sourceFilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VariableTextProperties &&
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
  $VariableTextPropertiesCopyWith<VariableTextProperties> get copyWith =>
      _$VariableTextPropertiesCopyWithImpl<VariableTextProperties>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceFilePath) fileImageProperties,
    required TResult Function(String text, material.TextStyle? textStyle)
        staticTextProperties,
    required TResult Function(String placeHolderText,
            material.TextStyle? textStyle, String sourceFilePath)
        variableTextProperties,
  }) {
    return variableTextProperties(placeHolderText, textStyle, sourceFilePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, material.TextStyle? textStyle)?
        staticTextProperties,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableTextProperties,
  }) {
    return variableTextProperties?.call(
        placeHolderText, textStyle, sourceFilePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, material.TextStyle? textStyle)?
        staticTextProperties,
    TResult Function(String placeHolderText, material.TextStyle? textStyle,
            String sourceFilePath)?
        variableTextProperties,
    required TResult orElse(),
  }) {
    if (variableTextProperties != null) {
      return variableTextProperties(placeHolderText, textStyle, sourceFilePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileImageProperties value) fileImageProperties,
    required TResult Function(StaticTextProperties value) staticTextProperties,
    required TResult Function(VariableTextProperties value)
        variableTextProperties,
  }) {
    return variableTextProperties(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileImageProperties value)? fileImageProperties,
    TResult Function(StaticTextProperties value)? staticTextProperties,
    TResult Function(VariableTextProperties value)? variableTextProperties,
  }) {
    return variableTextProperties?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileImageProperties value)? fileImageProperties,
    TResult Function(StaticTextProperties value)? staticTextProperties,
    TResult Function(VariableTextProperties value)? variableTextProperties,
    required TResult orElse(),
  }) {
    if (variableTextProperties != null) {
      return variableTextProperties(this);
    }
    return orElse();
  }
}

abstract class VariableTextProperties implements ElementProperties {
  const factory VariableTextProperties(
      {required String placeHolderText,
      material.TextStyle? textStyle,
      required String sourceFilePath}) = _$VariableTextProperties;

  /// The text to show in the editing phase.
  String get placeHolderText;

  /// The style of the text.
  material.TextStyle? get textStyle;

  /// The path of the file containing the text to be generated.
  String get sourceFilePath;
  @JsonKey(ignore: true)
  $VariableTextPropertiesCopyWith<VariableTextProperties> get copyWith =>
      throw _privateConstructorUsedError;
}
