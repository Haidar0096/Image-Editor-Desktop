import 'dart:typed_data';

import 'package:flutter/widgets.dart' as widgets;
import 'package:injectable/injectable.dart';
import 'package:photo_editor/services/screenshot_service/screenshot_service_impl.dart';

/// A service that takes a screenshot of a specific widget or screen.
@injectable
abstract class ScreenshotService {
  @factoryMethod
  factory ScreenshotService() => ScreenshotServiceDefaultImpl();

  /// Captures the screenshot of the given widget and returns it as a [Uint8List].
  ///
  /// The [BuildContext] - if provided - is used to find the theme of the widget.
  Future<Uint8List> captureWidget({
    widgets.BuildContext? context,
    required widgets.Widget widget,
  });
}
