part of 'screenshot_cubit.dart';

@freezed
class ScreenshotState with _$ScreenshotState {
  const ScreenshotState._();

  const factory ScreenshotState({
    /// The processing state of the cubit.
    required ProcessingState processingState,

    /// A message to indicate the current progress of the cubit.
    required Option<String> progressMessage,

    /// The directory to save the generated images in.
    required Option<Directory> outputImageDirectory,

    /// The naming strategy of the generated images.
    required FileNamingType fileNamingType,

    /// The base name of the generated images. Used only if [fileNamingType] is [FileNamingType.namePlusNumber].
    required Option<String> baseFileName,

    /// The file extension of the generated images.
    required ImageFormat outputImageFormat,

    /// The size of the output generated images in dips
    required Size outputImageSize,

    /// The quality of compression in percents
    required int outputImageQuality,
  }) = _ScreenshotState;

  factory ScreenshotState.initial() => ScreenshotState(
        processingState: ProcessingState.idle,
        progressMessage: none(),
        outputImageDirectory: none(),
        fileNamingType: FileNamingType.number,
        baseFileName: none(),
        outputImageFormat: ImageFormat.png,
        outputImageSize: const Size(1366, 768),
        outputImageQuality: ScreenshotCubit.maximumOutputImageResolution,
      );
}
