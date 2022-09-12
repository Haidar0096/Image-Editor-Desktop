import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:photo_editor/services/screenshot_service/screenshot_service_impl.dart';

/// A service that takes a screenshot of a specific widget or screen.
@injectable
abstract class ScreenshotService {
  @factoryMethod
  factory ScreenshotService() => ScreenshotServiceDefaultImpl();

  /// Captures the screenshot of the given widget and returns it as a [Uint8List].
  ///
  /// Params:
  ///
  /// - [context] : If provided, will be used to inherit the theme of the widget.
  /// - [widget] : The widget to capture.
  /// - [delay] : A delay to wait between retries of capturing in case capturing fails. This value should increase as the size of the
  /// widget tree increases.
  /// - [window] : The window, usually provided from `dart:ui`. It will be used to determine the physicalSize and devicePixelRatio.
  /// - [outputImageSize] : The size of the output image.
  /// - [outputImagePixelRatio] : The pixel ratio of the output image.
  /// - [outputImageByteFormat] : The byte format of the output image.
  Future<Uint8List> captureWidget({
    BuildContext? context,
    required Widget widget,
    Duration? delay,
    required FlutterWindow window,
    required Size outputImageSize,
    double? outputImagePixelRatio,
    ImageByteFormat? outputImageByteFormat,
  });
}
