// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screenshot_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScreenshotStateTearOff {
  const _$ScreenshotStateTearOff();

  _ScreenshotState call(
      {required bool isProcessing, required Widget editorWidget}) {
    return _ScreenshotState(
      isProcessing: isProcessing,
      editorWidget: editorWidget,
    );
  }
}

/// @nodoc
const $ScreenshotState = _$ScreenshotStateTearOff();

/// @nodoc
mixin _$ScreenshotState {
  bool get isProcessing => throw _privateConstructorUsedError;
  Widget get editorWidget => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenshotStateCopyWith<ScreenshotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenshotStateCopyWith<$Res> {
  factory $ScreenshotStateCopyWith(
          ScreenshotState value, $Res Function(ScreenshotState) then) =
      _$ScreenshotStateCopyWithImpl<$Res>;
  $Res call({bool isProcessing, Widget editorWidget});
}

/// @nodoc
class _$ScreenshotStateCopyWithImpl<$Res>
    implements $ScreenshotStateCopyWith<$Res> {
  _$ScreenshotStateCopyWithImpl(this._value, this._then);

  final ScreenshotState _value;
  // ignore: unused_field
  final $Res Function(ScreenshotState) _then;

  @override
  $Res call({
    Object? isProcessing = freezed,
    Object? editorWidget = freezed,
  }) {
    return _then(_value.copyWith(
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      editorWidget: editorWidget == freezed
          ? _value.editorWidget
          : editorWidget // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc
abstract class _$ScreenshotStateCopyWith<$Res>
    implements $ScreenshotStateCopyWith<$Res> {
  factory _$ScreenshotStateCopyWith(
          _ScreenshotState value, $Res Function(_ScreenshotState) then) =
      __$ScreenshotStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isProcessing, Widget editorWidget});
}

/// @nodoc
class __$ScreenshotStateCopyWithImpl<$Res>
    extends _$ScreenshotStateCopyWithImpl<$Res>
    implements _$ScreenshotStateCopyWith<$Res> {
  __$ScreenshotStateCopyWithImpl(
      _ScreenshotState _value, $Res Function(_ScreenshotState) _then)
      : super(_value, (v) => _then(v as _ScreenshotState));

  @override
  _ScreenshotState get _value => super._value as _ScreenshotState;

  @override
  $Res call({
    Object? isProcessing = freezed,
    Object? editorWidget = freezed,
  }) {
    return _then(_ScreenshotState(
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      editorWidget: editorWidget == freezed
          ? _value.editorWidget
          : editorWidget // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$_ScreenshotState extends _ScreenshotState {
  const _$_ScreenshotState(
      {required this.isProcessing, required this.editorWidget})
      : super._();

  @override
  final bool isProcessing;
  @override
  final Widget editorWidget;

  @override
  String toString() {
    return 'ScreenshotState(isProcessing: $isProcessing, editorWidget: $editorWidget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScreenshotState &&
            const DeepCollectionEquality()
                .equals(other.isProcessing, isProcessing) &&
            const DeepCollectionEquality()
                .equals(other.editorWidget, editorWidget));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isProcessing),
      const DeepCollectionEquality().hash(editorWidget));

  @JsonKey(ignore: true)
  @override
  _$ScreenshotStateCopyWith<_ScreenshotState> get copyWith =>
      __$ScreenshotStateCopyWithImpl<_ScreenshotState>(this, _$identity);
}

abstract class _ScreenshotState extends ScreenshotState {
  const factory _ScreenshotState(
      {required bool isProcessing,
      required Widget editorWidget}) = _$_ScreenshotState;
  const _ScreenshotState._() : super._();

  @override
  bool get isProcessing;
  @override
  Widget get editorWidget;
  @override
  @JsonKey(ignore: true)
  _$ScreenshotStateCopyWith<_ScreenshotState> get copyWith =>
      throw _privateConstructorUsedError;
}
