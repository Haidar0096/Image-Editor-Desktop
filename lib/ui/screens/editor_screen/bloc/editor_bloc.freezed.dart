// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'editor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditorStateTearOff {
  const _$EditorStateTearOff();

  _EditorState call(
      {required Editor editor,
      required Option<String> draggedElementId,
      required Option<Offset> dragPosition,
      required Option<String> selectedElementId}) {
    return _EditorState(
      editor: editor,
      draggedElementId: draggedElementId,
      dragPosition: dragPosition,
      selectedElementId: selectedElementId,
    );
  }
}

/// @nodoc
const $EditorState = _$EditorStateTearOff();

/// @nodoc
mixin _$EditorState {
  Editor get editor => throw _privateConstructorUsedError;
  Option<String> get draggedElementId => throw _privateConstructorUsedError;
  Option<Offset> get dragPosition => throw _privateConstructorUsedError;
  Option<String> get selectedElementId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditorStateCopyWith<EditorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorStateCopyWith<$Res> {
  factory $EditorStateCopyWith(
          EditorState value, $Res Function(EditorState) then) =
      _$EditorStateCopyWithImpl<$Res>;
  $Res call(
      {Editor editor,
      Option<String> draggedElementId,
      Option<Offset> dragPosition,
      Option<String> selectedElementId});

  $EditorCopyWith<$Res> get editor;
}

/// @nodoc
class _$EditorStateCopyWithImpl<$Res> implements $EditorStateCopyWith<$Res> {
  _$EditorStateCopyWithImpl(this._value, this._then);

  final EditorState _value;
  // ignore: unused_field
  final $Res Function(EditorState) _then;

  @override
  $Res call({
    Object? editor = freezed,
    Object? draggedElementId = freezed,
    Object? dragPosition = freezed,
    Object? selectedElementId = freezed,
  }) {
    return _then(_value.copyWith(
      editor: editor == freezed
          ? _value.editor
          : editor // ignore: cast_nullable_to_non_nullable
              as Editor,
      draggedElementId: draggedElementId == freezed
          ? _value.draggedElementId
          : draggedElementId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      dragPosition: dragPosition == freezed
          ? _value.dragPosition
          : dragPosition // ignore: cast_nullable_to_non_nullable
              as Option<Offset>,
      selectedElementId: selectedElementId == freezed
          ? _value.selectedElementId
          : selectedElementId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }

  @override
  $EditorCopyWith<$Res> get editor {
    return $EditorCopyWith<$Res>(_value.editor, (value) {
      return _then(_value.copyWith(editor: value));
    });
  }
}

/// @nodoc
abstract class _$EditorStateCopyWith<$Res>
    implements $EditorStateCopyWith<$Res> {
  factory _$EditorStateCopyWith(
          _EditorState value, $Res Function(_EditorState) then) =
      __$EditorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Editor editor,
      Option<String> draggedElementId,
      Option<Offset> dragPosition,
      Option<String> selectedElementId});

  @override
  $EditorCopyWith<$Res> get editor;
}

/// @nodoc
class __$EditorStateCopyWithImpl<$Res> extends _$EditorStateCopyWithImpl<$Res>
    implements _$EditorStateCopyWith<$Res> {
  __$EditorStateCopyWithImpl(
      _EditorState _value, $Res Function(_EditorState) _then)
      : super(_value, (v) => _then(v as _EditorState));

  @override
  _EditorState get _value => super._value as _EditorState;

  @override
  $Res call({
    Object? editor = freezed,
    Object? draggedElementId = freezed,
    Object? dragPosition = freezed,
    Object? selectedElementId = freezed,
  }) {
    return _then(_EditorState(
      editor: editor == freezed
          ? _value.editor
          : editor // ignore: cast_nullable_to_non_nullable
              as Editor,
      draggedElementId: draggedElementId == freezed
          ? _value.draggedElementId
          : draggedElementId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      dragPosition: dragPosition == freezed
          ? _value.dragPosition
          : dragPosition // ignore: cast_nullable_to_non_nullable
              as Option<Offset>,
      selectedElementId: selectedElementId == freezed
          ? _value.selectedElementId
          : selectedElementId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_EditorState extends _EditorState {
  const _$_EditorState(
      {required this.editor,
      required this.draggedElementId,
      required this.dragPosition,
      required this.selectedElementId})
      : super._();

  @override
  final Editor editor;
  @override
  final Option<String> draggedElementId;
  @override
  final Option<Offset> dragPosition;
  @override
  final Option<String> selectedElementId;

  @override
  String toString() {
    return 'EditorState(editor: $editor, draggedElementId: $draggedElementId, dragPosition: $dragPosition, selectedElementId: $selectedElementId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditorState &&
            const DeepCollectionEquality().equals(other.editor, editor) &&
            const DeepCollectionEquality()
                .equals(other.draggedElementId, draggedElementId) &&
            const DeepCollectionEquality()
                .equals(other.dragPosition, dragPosition) &&
            const DeepCollectionEquality()
                .equals(other.selectedElementId, selectedElementId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(editor),
      const DeepCollectionEquality().hash(draggedElementId),
      const DeepCollectionEquality().hash(dragPosition),
      const DeepCollectionEquality().hash(selectedElementId));

  @JsonKey(ignore: true)
  @override
  _$EditorStateCopyWith<_EditorState> get copyWith =>
      __$EditorStateCopyWithImpl<_EditorState>(this, _$identity);
}

abstract class _EditorState extends EditorState {
  const factory _EditorState(
      {required Editor editor,
      required Option<String> draggedElementId,
      required Option<Offset> dragPosition,
      required Option<String> selectedElementId}) = _$_EditorState;
  const _EditorState._() : super._();

  @override
  Editor get editor;
  @override
  Option<String> get draggedElementId;
  @override
  Option<Offset> get dragPosition;
  @override
  Option<String> get selectedElementId;
  @override
  @JsonKey(ignore: true)
  _$EditorStateCopyWith<_EditorState> get copyWith =>
      throw _privateConstructorUsedError;
}
