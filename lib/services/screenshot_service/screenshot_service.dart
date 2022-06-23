import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:injectable/injectable.dart';
import 'package:photo_editor/common/failure/failure.dart';
import 'package:photo_editor/services/screenshot_service/screenshot_service_impl.dart';

/// A service that takes a screenshot of a specific widget or screen.
@injectable
abstract class ScreenshotService {
  @factoryMethod
  factory ScreenshotService() => ScreenshotServiceDefaultImpl();

  /// Captures the screenshot of the given widget and returns it as a [Uint8List].
  ///
  /// If an error occurs, it will return a [CaptureWidgetFailure].
  ///
  /// The [BuildContext] - if provided - is used to find the theme of the widget.
  Future<Either<Failure, Uint8List>> captureWidget({
    widgets.BuildContext? context,
    required widgets.Widget widget,
  });
}

/// The failure that occurs when the screenshot service fails to capture a widget.
class CaptureWidgetFailure extends Failure {
  /// The exception that was thrown when the screenshot service failed to capture a widget.
  final Exception exception;

  CaptureWidgetFailure(this.exception);

  @override
  String get message =>
      'Could not capture the widget. The exception was: $exception';

  @override
  String get code => 'capture_widget_failure';
}
