import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:screenshot/screenshot.dart';

abstract class ScreenshotService {
  Future<void> captureWidget(
      {BuildContext? context,
      required Widget widget,
      required String outputFilePath});
}

@Injectable(as:ScreenshotService)
class ScreenshotServiceImpl implements ScreenshotService {
  final ScreenshotController _controller = ScreenshotController();

  @override
  Future<void> captureWidget(
      {BuildContext? context,
      required Widget widget,
      required String outputFilePath}) async {
    Uint8List capturedWidgetData = await _controller.captureFromWidget(
      widget,
      context: context,
    );
    final File file = File(outputFilePath);
    file.writeAsBytesSync(capturedWidgetData);
  }
}
