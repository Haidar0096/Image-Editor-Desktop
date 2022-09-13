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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScreenshotState {
  /// The processing state of the cubit.
  ProcessingState get processingState => throw _privateConstructorUsedError;

  /// A message to indicate the current progress of the cubit.
  Option<String> get progressMessage => throw _privateConstructorUsedError;

  /// The directory to save the generated images in.
  Option<Directory> get outputImageDirectory => throw _privateConstructorUsedError;

  /// The naming strategy of the generated images.
  FileNamingType get fileNamingType => throw _privateConstructorUsedError;

  /// The base name of the generated images. Used only if [fileNamingType] is [FileNamingType.namePlusNumber].
  Option<String> get baseFileName => throw _privateConstructorUsedError;

  /// The file extension of the generated images.
  ImageFormat get outputImageFormat => throw _privateConstructorUsedError;

  /// The size of the output generated images in dips
  ui.Size get outputImageSize => throw _privateConstructorUsedError;

  /// The quality of compression in percents
  int get outputImageQuality => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenshotStateCopyWith<ScreenshotState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenshotStateCopyWith<$Res> {
  factory $ScreenshotStateCopyWith(ScreenshotState value, $Res Function(ScreenshotState) then) =
      _$ScreenshotStateCopyWithImpl<$Res>;
  $Res call(
      {ProcessingState processingState,
      Option<String> progressMessage,
      Option<Directory> outputImageDirectory,
      FileNamingType fileNamingType,
      Option<String> baseFileName,
      ImageFormat outputImageFormat,
      ui.Size outputImageSize,
      int outputImageQuality});
}

/// @nodoc
class _$ScreenshotStateCopyWithImpl<$Res> implements $ScreenshotStateCopyWith<$Res> {
  _$ScreenshotStateCopyWithImpl(this._value, this._then);

  final ScreenshotState _value;
  // ignore: unused_field
  final $Res Function(ScreenshotState) _then;

  @override
  $Res call({
    Object? processingState = freezed,
    Object? progressMessage = freezed,
    Object? outputImageDirectory = freezed,
    Object? fileNamingType = freezed,
    Object? baseFileName = freezed,
    Object? outputImageFormat = freezed,
    Object? outputImageSize = freezed,
    Object? outputImageQuality = freezed,
  }) {
    return _then(_value.copyWith(
      processingState: processingState == freezed
          ? _value.processingState
          : processingState // ignore: cast_nullable_to_non_nullable
              as ProcessingState,
      progressMessage: progressMessage == freezed
          ? _value.progressMessage
          : progressMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      outputImageDirectory: outputImageDirectory == freezed
          ? _value.outputImageDirectory
          : outputImageDirectory // ignore: cast_nullable_to_non_nullable
              as Option<Directory>,
      fileNamingType: fileNamingType == freezed
          ? _value.fileNamingType
          : fileNamingType // ignore: cast_nullable_to_non_nullable
              as FileNamingType,
      baseFileName: baseFileName == freezed
          ? _value.baseFileName
          : baseFileName // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      outputImageFormat: outputImageFormat == freezed
          ? _value.outputImageFormat
          : outputImageFormat // ignore: cast_nullable_to_non_nullable
              as ImageFormat,
      outputImageSize: outputImageSize == freezed
          ? _value.outputImageSize
          : outputImageSize // ignore: cast_nullable_to_non_nullable
              as ui.Size,
      outputImageQuality: outputImageQuality == freezed
          ? _value.outputImageQuality
          : outputImageQuality // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ScreenshotStateCopyWith<$Res> implements $ScreenshotStateCopyWith<$Res> {
  factory _$$_ScreenshotStateCopyWith(_$_ScreenshotState value, $Res Function(_$_ScreenshotState) then) =
      __$$_ScreenshotStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProcessingState processingState,
      Option<String> progressMessage,
      Option<Directory> outputImageDirectory,
      FileNamingType fileNamingType,
      Option<String> baseFileName,
      ImageFormat outputImageFormat,
      ui.Size outputImageSize,
      int outputImageQuality});
}

/// @nodoc
class __$$_ScreenshotStateCopyWithImpl<$Res> extends _$ScreenshotStateCopyWithImpl<$Res>
    implements _$$_ScreenshotStateCopyWith<$Res> {
  __$$_ScreenshotStateCopyWithImpl(_$_ScreenshotState _value, $Res Function(_$_ScreenshotState) _then)
      : super(_value, (v) => _then(v as _$_ScreenshotState));

  @override
  _$_ScreenshotState get _value => super._value as _$_ScreenshotState;

  @override
  $Res call({
    Object? processingState = freezed,
    Object? progressMessage = freezed,
    Object? outputImageDirectory = freezed,
    Object? fileNamingType = freezed,
    Object? baseFileName = freezed,
    Object? outputImageFormat = freezed,
    Object? outputImageSize = freezed,
    Object? outputImageQuality = freezed,
  }) {
    return _then(_$_ScreenshotState(
      processingState: processingState == freezed
          ? _value.processingState
          : processingState // ignore: cast_nullable_to_non_nullable
              as ProcessingState,
      progressMessage: progressMessage == freezed
          ? _value.progressMessage
          : progressMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      outputImageDirectory: outputImageDirectory == freezed
          ? _value.outputImageDirectory
          : outputImageDirectory // ignore: cast_nullable_to_non_nullable
              as Option<Directory>,
      fileNamingType: fileNamingType == freezed
          ? _value.fileNamingType
          : fileNamingType // ignore: cast_nullable_to_non_nullable
              as FileNamingType,
      baseFileName: baseFileName == freezed
          ? _value.baseFileName
          : baseFileName // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      outputImageFormat: outputImageFormat == freezed
          ? _value.outputImageFormat
          : outputImageFormat // ignore: cast_nullable_to_non_nullable
              as ImageFormat,
      outputImageSize: outputImageSize == freezed
          ? _value.outputImageSize
          : outputImageSize // ignore: cast_nullable_to_non_nullable
              as ui.Size,
      outputImageQuality: outputImageQuality == freezed
          ? _value.outputImageQuality
          : outputImageQuality // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScreenshotState extends _ScreenshotState {
  const _$_ScreenshotState(
      {required this.processingState,
      required this.progressMessage,
      required this.outputImageDirectory,
      required this.fileNamingType,
      required this.baseFileName,
      required this.outputImageFormat,
      required this.outputImageSize,
      required this.outputImageQuality})
      : super._();

  /// The processing state of the cubit.
  @override
  final ProcessingState processingState;

  /// A message to indicate the current progress of the cubit.
  @override
  final Option<String> progressMessage;

  /// The directory to save the generated images in.
  @override
  final Option<Directory> outputImageDirectory;

  /// The naming strategy of the generated images.
  @override
  final FileNamingType fileNamingType;

  /// The base name of the generated images. Used only if [fileNamingType] is [FileNamingType.namePlusNumber].
  @override
  final Option<String> baseFileName;

  /// The file extension of the generated images.
  @override
  final ImageFormat outputImageFormat;

  /// The size of the output generated images in dips
  @override
  final ui.Size outputImageSize;

  /// The quality of compression in percents
  @override
  final int outputImageQuality;

  @override
  String toString() {
    return 'ScreenshotState(processingState: $processingState, progressMessage: $progressMessage, outputImageDirectory: $outputImageDirectory, fileNamingType: $fileNamingType, baseFileName: $baseFileName, outputImageFormat: $outputImageFormat, outputImageSize: $outputImageSize, outputImageQuality: $outputImageQuality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenshotState &&
            const DeepCollectionEquality().equals(other.processingState, processingState) &&
            const DeepCollectionEquality().equals(other.progressMessage, progressMessage) &&
            const DeepCollectionEquality().equals(other.outputImageDirectory, outputImageDirectory) &&
            const DeepCollectionEquality().equals(other.fileNamingType, fileNamingType) &&
            const DeepCollectionEquality().equals(other.baseFileName, baseFileName) &&
            const DeepCollectionEquality().equals(other.outputImageFormat, outputImageFormat) &&
            const DeepCollectionEquality().equals(other.outputImageSize, outputImageSize) &&
            const DeepCollectionEquality().equals(other.outputImageQuality, outputImageQuality));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(processingState),
      const DeepCollectionEquality().hash(progressMessage),
      const DeepCollectionEquality().hash(outputImageDirectory),
      const DeepCollectionEquality().hash(fileNamingType),
      const DeepCollectionEquality().hash(baseFileName),
      const DeepCollectionEquality().hash(outputImageFormat),
      const DeepCollectionEquality().hash(outputImageSize),
      const DeepCollectionEquality().hash(outputImageQuality));

  @JsonKey(ignore: true)
  @override
  _$$_ScreenshotStateCopyWith<_$_ScreenshotState> get copyWith =>
      __$$_ScreenshotStateCopyWithImpl<_$_ScreenshotState>(this, _$identity);
}

abstract class _ScreenshotState extends ScreenshotState {
  const factory _ScreenshotState(
      {required final ProcessingState processingState,
      required final Option<String> progressMessage,
      required final Option<Directory> outputImageDirectory,
      required final FileNamingType fileNamingType,
      required final Option<String> baseFileName,
      required final ImageFormat outputImageFormat,
      required final ui.Size outputImageSize,
      required final int outputImageQuality}) = _$_ScreenshotState;
  const _ScreenshotState._() : super._();

  @override

  /// The processing state of the cubit.
  ProcessingState get processingState;
  @override

  /// A message to indicate the current progress of the cubit.
  Option<String> get progressMessage;
  @override

  /// The directory to save the generated images in.
  Option<Directory> get outputImageDirectory;
  @override

  /// The naming strategy of the generated images.
  FileNamingType get fileNamingType;
  @override

  /// The base name of the generated images. Used only if [fileNamingType] is [FileNamingType.namePlusNumber].
  Option<String> get baseFileName;
  @override

  /// The file extension of the generated images.
  ImageFormat get outputImageFormat;
  @override

  /// The size of the output generated images in dips
  ui.Size get outputImageSize;
  @override

  /// The quality of compression in percents
  int get outputImageQuality;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenshotStateCopyWith<_$_ScreenshotState> get copyWith => throw _privateConstructorUsedError;
}
