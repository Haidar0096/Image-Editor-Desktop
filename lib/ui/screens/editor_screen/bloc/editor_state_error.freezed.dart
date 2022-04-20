// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'editor_state_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditorStateErrorTearOff {
  const _$EditorStateErrorTearOff();

  _EditorStateError call(String message) {
    return _EditorStateError(
      message,
    );
  }
}

/// @nodoc
const $EditorStateError = _$EditorStateErrorTearOff();

/// @nodoc
mixin _$EditorStateError {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditorStateErrorCopyWith<EditorStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorStateErrorCopyWith<$Res> {
  factory $EditorStateErrorCopyWith(
          EditorStateError value, $Res Function(EditorStateError) then) =
      _$EditorStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$EditorStateErrorCopyWithImpl<$Res>
    implements $EditorStateErrorCopyWith<$Res> {
  _$EditorStateErrorCopyWithImpl(this._value, this._then);

  final EditorStateError _value;
  // ignore: unused_field
  final $Res Function(EditorStateError) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EditorStateErrorCopyWith<$Res>
    implements $EditorStateErrorCopyWith<$Res> {
  factory _$EditorStateErrorCopyWith(
          _EditorStateError value, $Res Function(_EditorStateError) then) =
      __$EditorStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$EditorStateErrorCopyWithImpl<$Res>
    extends _$EditorStateErrorCopyWithImpl<$Res>
    implements _$EditorStateErrorCopyWith<$Res> {
  __$EditorStateErrorCopyWithImpl(
      _EditorStateError _value, $Res Function(_EditorStateError) _then)
      : super(_value, (v) => _then(v as _EditorStateError));

  @override
  _EditorStateError get _value => super._value as _EditorStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_EditorStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditorStateError extends _EditorStateError {
  const _$_EditorStateError(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'EditorStateError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditorStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$EditorStateErrorCopyWith<_EditorStateError> get copyWith =>
      __$EditorStateErrorCopyWithImpl<_EditorStateError>(this, _$identity);
}

abstract class _EditorStateError extends EditorStateError {
  const factory _EditorStateError(String message) = _$_EditorStateError;
  const _EditorStateError._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$EditorStateErrorCopyWith<_EditorStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
