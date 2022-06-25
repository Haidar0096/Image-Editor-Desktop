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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Editor {
  /// The elements in the editor.
  ISet<Element> get elements => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditorCopyWith<Editor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorCopyWith<$Res> {
  factory $EditorCopyWith(Editor value, $Res Function(Editor) then) = _$EditorCopyWithImpl<$Res>;
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
abstract class _$$_EditorCopyWith<$Res> implements $EditorCopyWith<$Res> {
  factory _$$_EditorCopyWith(_$_Editor value, $Res Function(_$_Editor) then) = __$$_EditorCopyWithImpl<$Res>;
  @override
  $Res call({ISet<Element> elements});
}

/// @nodoc
class __$$_EditorCopyWithImpl<$Res> extends _$EditorCopyWithImpl<$Res> implements _$$_EditorCopyWith<$Res> {
  __$$_EditorCopyWithImpl(_$_Editor _value, $Res Function(_$_Editor) _then)
      : super(_value, (v) => _then(v as _$_Editor));

  @override
  _$_Editor get _value => super._value as _$_Editor;

  @override
  $Res call({
    Object? elements = freezed,
  }) {
    return _then(_$_Editor(
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

  /// The elements in the editor.
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
            other is _$_Editor &&
            const DeepCollectionEquality().equals(other.elements, elements));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(elements));

  @JsonKey(ignore: true)
  @override
  _$$_EditorCopyWith<_$_Editor> get copyWith => __$$_EditorCopyWithImpl<_$_Editor>(this, _$identity);
}

abstract class _Editor implements Editor {
  const factory _Editor({required final ISet<Element> elements}) = _$_Editor;

  @override

  /// The elements in the editor.
  ISet<Element> get elements => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EditorCopyWith<_$_Editor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Element {
  /// The unique id of the element.
  String get id => throw _privateConstructorUsedError;

  /// The properties of the element.
  ElementProperties get properties => throw _privateConstructorUsedError;

  /// The rectangle in which the element is contained.
  widgets.Rect get rect => throw _privateConstructorUsedError;

  /// The order this element should be shown amongst other elements in the editor.
  int get showOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ElementCopyWith<Element> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementCopyWith<$Res> {
  factory $ElementCopyWith(Element value, $Res Function(Element) then) = _$ElementCopyWithImpl<$Res>;
  $Res call({String id, ElementProperties properties, widgets.Rect rect, int showOrder});

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
              as widgets.Rect,
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
abstract class _$$_ElementCopyWith<$Res> implements $ElementCopyWith<$Res> {
  factory _$$_ElementCopyWith(_$_Element value, $Res Function(_$_Element) then) = __$$_ElementCopyWithImpl<$Res>;
  @override
  $Res call({String id, ElementProperties properties, widgets.Rect rect, int showOrder});

  @override
  $ElementPropertiesCopyWith<$Res> get properties;
}

/// @nodoc
class __$$_ElementCopyWithImpl<$Res> extends _$ElementCopyWithImpl<$Res> implements _$$_ElementCopyWith<$Res> {
  __$$_ElementCopyWithImpl(_$_Element _value, $Res Function(_$_Element) _then)
      : super(_value, (v) => _then(v as _$_Element));

  @override
  _$_Element get _value => super._value as _$_Element;

  @override
  $Res call({
    Object? id = freezed,
    Object? properties = freezed,
    Object? rect = freezed,
    Object? showOrder = freezed,
  }) {
    return _then(_$_Element(
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
              as widgets.Rect,
      showOrder: showOrder == freezed
          ? _value.showOrder
          : showOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Element implements _Element {
  const _$_Element({required this.id, required this.properties, required this.rect, required this.showOrder});

  /// The unique id of the element.
  @override
  final String id;

  /// The properties of the element.
  @override
  final ElementProperties properties;

  /// The rectangle in which the element is contained.
  @override
  final widgets.Rect rect;

  /// The order this element should be shown amongst other elements in the editor.
  @override
  final int showOrder;

  @override
  String toString() {
    return 'Element(id: $id, properties: $properties, rect: $rect, showOrder: $showOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Element &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.properties, properties) &&
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
  _$$_ElementCopyWith<_$_Element> get copyWith => __$$_ElementCopyWithImpl<_$_Element>(this, _$identity);
}

abstract class _Element implements Element {
  const factory _Element(
      {required final String id,
      required final ElementProperties properties,
      required final widgets.Rect rect,
      required final int showOrder}) = _$_Element;

  @override

  /// The unique id of the element.
  String get id => throw _privateConstructorUsedError;
  @override

  /// The properties of the element.
  ElementProperties get properties => throw _privateConstructorUsedError;
  @override

  /// The rectangle in which the element is contained.
  widgets.Rect get rect => throw _privateConstructorUsedError;
  @override

  /// The order this element should be shown amongst other elements in the editor.
  int get showOrder => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ElementCopyWith<_$_Element> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ElementProperties {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceFilePath) fileImageProperties,
    required TResult Function(String text, widgets.TextStyle? textStyle) staticTextProperties,
    required TResult Function(String placeHolderText, widgets.TextStyle? textStyle, String sourceFilePath)
        variableTextProperties,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, widgets.TextStyle? textStyle)? staticTextProperties,
    TResult Function(String placeHolderText, widgets.TextStyle? textStyle, String sourceFilePath)?
        variableTextProperties,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, widgets.TextStyle? textStyle)? staticTextProperties,
    TResult Function(String placeHolderText, widgets.TextStyle? textStyle, String sourceFilePath)?
        variableTextProperties,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileImageProperties value) fileImageProperties,
    required TResult Function(StaticTextProperties value) staticTextProperties,
    required TResult Function(VariableTextProperties value) variableTextProperties,
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
  factory $ElementPropertiesCopyWith(ElementProperties value, $Res Function(ElementProperties) then) =
      _$ElementPropertiesCopyWithImpl<$Res>;
}

/// @nodoc
class _$ElementPropertiesCopyWithImpl<$Res> implements $ElementPropertiesCopyWith<$Res> {
  _$ElementPropertiesCopyWithImpl(this._value, this._then);

  final ElementProperties _value;
  // ignore: unused_field
  final $Res Function(ElementProperties) _then;
}

/// @nodoc
abstract class _$$FileImagePropertiesCopyWith<$Res> {
  factory _$$FileImagePropertiesCopyWith(_$FileImageProperties value, $Res Function(_$FileImageProperties) then) =
      __$$FileImagePropertiesCopyWithImpl<$Res>;
  $Res call({String sourceFilePath});
}

/// @nodoc
class __$$FileImagePropertiesCopyWithImpl<$Res> extends _$ElementPropertiesCopyWithImpl<$Res>
    implements _$$FileImagePropertiesCopyWith<$Res> {
  __$$FileImagePropertiesCopyWithImpl(_$FileImageProperties _value, $Res Function(_$FileImageProperties) _then)
      : super(_value, (v) => _then(v as _$FileImageProperties));

  @override
  _$FileImageProperties get _value => super._value as _$FileImageProperties;

  @override
  $Res call({
    Object? sourceFilePath = freezed,
  }) {
    return _then(_$FileImageProperties(
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

  /// The path of the file containing this image.
  @override
  final String sourceFilePath;

  @override
  String toString() {
    return 'ElementProperties.fileImageProperties(sourceFilePath: $sourceFilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileImageProperties &&
            const DeepCollectionEquality().equals(other.sourceFilePath, sourceFilePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(sourceFilePath));

  @JsonKey(ignore: true)
  @override
  _$$FileImagePropertiesCopyWith<_$FileImageProperties> get copyWith =>
      __$$FileImagePropertiesCopyWithImpl<_$FileImageProperties>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceFilePath) fileImageProperties,
    required TResult Function(String text, widgets.TextStyle? textStyle) staticTextProperties,
    required TResult Function(String placeHolderText, widgets.TextStyle? textStyle, String sourceFilePath)
        variableTextProperties,
  }) {
    return fileImageProperties(sourceFilePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, widgets.TextStyle? textStyle)? staticTextProperties,
    TResult Function(String placeHolderText, widgets.TextStyle? textStyle, String sourceFilePath)?
        variableTextProperties,
  }) {
    return fileImageProperties?.call(sourceFilePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, widgets.TextStyle? textStyle)? staticTextProperties,
    TResult Function(String placeHolderText, widgets.TextStyle? textStyle, String sourceFilePath)?
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
    required TResult Function(VariableTextProperties value) variableTextProperties,
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
  const factory FileImageProperties({required final String sourceFilePath}) = _$FileImageProperties;

  /// The path of the file containing this image.
  String get sourceFilePath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FileImagePropertiesCopyWith<_$FileImageProperties> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaticTextPropertiesCopyWith<$Res> {
  factory _$$StaticTextPropertiesCopyWith(_$StaticTextProperties value, $Res Function(_$StaticTextProperties) then) =
      __$$StaticTextPropertiesCopyWithImpl<$Res>;
  $Res call({String text, widgets.TextStyle? textStyle});
}

/// @nodoc
class __$$StaticTextPropertiesCopyWithImpl<$Res> extends _$ElementPropertiesCopyWithImpl<$Res>
    implements _$$StaticTextPropertiesCopyWith<$Res> {
  __$$StaticTextPropertiesCopyWithImpl(_$StaticTextProperties _value, $Res Function(_$StaticTextProperties) _then)
      : super(_value, (v) => _then(v as _$StaticTextProperties));

  @override
  _$StaticTextProperties get _value => super._value as _$StaticTextProperties;

  @override
  $Res call({
    Object? text = freezed,
    Object? textStyle = freezed,
  }) {
    return _then(_$StaticTextProperties(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      textStyle: textStyle == freezed
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as widgets.TextStyle?,
    ));
  }
}

/// @nodoc

class _$StaticTextProperties implements StaticTextProperties {
  const _$StaticTextProperties({required this.text, this.textStyle});

  /// The value of the text.
  @override
  final String text;

  /// The style of the text.
  @override
  final widgets.TextStyle? textStyle;

  @override
  String toString() {
    return 'ElementProperties.staticTextProperties(text: $text, textStyle: $textStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaticTextProperties &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.textStyle, textStyle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(text), const DeepCollectionEquality().hash(textStyle));

  @JsonKey(ignore: true)
  @override
  _$$StaticTextPropertiesCopyWith<_$StaticTextProperties> get copyWith =>
      __$$StaticTextPropertiesCopyWithImpl<_$StaticTextProperties>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceFilePath) fileImageProperties,
    required TResult Function(String text, widgets.TextStyle? textStyle) staticTextProperties,
    required TResult Function(String placeHolderText, widgets.TextStyle? textStyle, String sourceFilePath)
        variableTextProperties,
  }) {
    return staticTextProperties(text, textStyle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, widgets.TextStyle? textStyle)? staticTextProperties,
    TResult Function(String placeHolderText, widgets.TextStyle? textStyle, String sourceFilePath)?
        variableTextProperties,
  }) {
    return staticTextProperties?.call(text, textStyle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, widgets.TextStyle? textStyle)? staticTextProperties,
    TResult Function(String placeHolderText, widgets.TextStyle? textStyle, String sourceFilePath)?
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
    required TResult Function(VariableTextProperties value) variableTextProperties,
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
  const factory StaticTextProperties({required final String text, final widgets.TextStyle? textStyle}) =
      _$StaticTextProperties;

  /// The value of the text.
  String get text => throw _privateConstructorUsedError;

  /// The style of the text.
  widgets.TextStyle? get textStyle => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$StaticTextPropertiesCopyWith<_$StaticTextProperties> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VariableTextPropertiesCopyWith<$Res> {
  factory _$$VariableTextPropertiesCopyWith(
          _$VariableTextProperties value, $Res Function(_$VariableTextProperties) then) =
      __$$VariableTextPropertiesCopyWithImpl<$Res>;
  $Res call({String placeHolderText, widgets.TextStyle? textStyle, String sourceFilePath});
}

/// @nodoc
class __$$VariableTextPropertiesCopyWithImpl<$Res> extends _$ElementPropertiesCopyWithImpl<$Res>
    implements _$$VariableTextPropertiesCopyWith<$Res> {
  __$$VariableTextPropertiesCopyWithImpl(_$VariableTextProperties _value, $Res Function(_$VariableTextProperties) _then)
      : super(_value, (v) => _then(v as _$VariableTextProperties));

  @override
  _$VariableTextProperties get _value => super._value as _$VariableTextProperties;

  @override
  $Res call({
    Object? placeHolderText = freezed,
    Object? textStyle = freezed,
    Object? sourceFilePath = freezed,
  }) {
    return _then(_$VariableTextProperties(
      placeHolderText: placeHolderText == freezed
          ? _value.placeHolderText
          : placeHolderText // ignore: cast_nullable_to_non_nullable
              as String,
      textStyle: textStyle == freezed
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as widgets.TextStyle?,
      sourceFilePath: sourceFilePath == freezed
          ? _value.sourceFilePath
          : sourceFilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VariableTextProperties implements VariableTextProperties {
  const _$VariableTextProperties({required this.placeHolderText, this.textStyle, required this.sourceFilePath});

  /// The text to show in the editing phase.
  @override
  final String placeHolderText;

  /// The style of the text.
  @override
  final widgets.TextStyle? textStyle;

  /// The path of the file containing the text to be generated.
  @override
  final String sourceFilePath;

  @override
  String toString() {
    return 'ElementProperties.variableTextProperties(placeHolderText: $placeHolderText, textStyle: $textStyle, sourceFilePath: $sourceFilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariableTextProperties &&
            const DeepCollectionEquality().equals(other.placeHolderText, placeHolderText) &&
            const DeepCollectionEquality().equals(other.textStyle, textStyle) &&
            const DeepCollectionEquality().equals(other.sourceFilePath, sourceFilePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(placeHolderText),
      const DeepCollectionEquality().hash(textStyle), const DeepCollectionEquality().hash(sourceFilePath));

  @JsonKey(ignore: true)
  @override
  _$$VariableTextPropertiesCopyWith<_$VariableTextProperties> get copyWith =>
      __$$VariableTextPropertiesCopyWithImpl<_$VariableTextProperties>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceFilePath) fileImageProperties,
    required TResult Function(String text, widgets.TextStyle? textStyle) staticTextProperties,
    required TResult Function(String placeHolderText, widgets.TextStyle? textStyle, String sourceFilePath)
        variableTextProperties,
  }) {
    return variableTextProperties(placeHolderText, textStyle, sourceFilePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, widgets.TextStyle? textStyle)? staticTextProperties,
    TResult Function(String placeHolderText, widgets.TextStyle? textStyle, String sourceFilePath)?
        variableTextProperties,
  }) {
    return variableTextProperties?.call(placeHolderText, textStyle, sourceFilePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceFilePath)? fileImageProperties,
    TResult Function(String text, widgets.TextStyle? textStyle)? staticTextProperties,
    TResult Function(String placeHolderText, widgets.TextStyle? textStyle, String sourceFilePath)?
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
    required TResult Function(VariableTextProperties value) variableTextProperties,
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
      {required final String placeHolderText,
      final widgets.TextStyle? textStyle,
      required final String sourceFilePath}) = _$VariableTextProperties;

  /// The text to show in the editing phase.
  String get placeHolderText => throw _privateConstructorUsedError;

  /// The style of the text.
  widgets.TextStyle? get textStyle => throw _privateConstructorUsedError;

  /// The path of the file containing the text to be generated.
  String get sourceFilePath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$VariableTextPropertiesCopyWith<_$VariableTextProperties> get copyWith => throw _privateConstructorUsedError;
}
