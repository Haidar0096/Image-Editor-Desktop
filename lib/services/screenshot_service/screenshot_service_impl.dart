import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:photo_editor/services/screenshot_service/screenshot_service.dart';

/// The default implementation of ScreenshotService.
class ScreenshotServiceDefaultImpl implements ScreenshotService {
  @override
  Future<Uint8List> captureWidget({
    BuildContext? context,
    required Widget widget,
    Duration? delay,
    required ui.FlutterWindow window,
    required Size outputImageSize,
    double? outputImagePixelRatio,
    ui.ImageByteFormat? outputImageByteFormat,
  }) async {
    int retryCounter = 3;
    bool isDirty = false;

    Widget child = widget;

    if (context != null) {
      // Inherit Theme and MediaQuery of app
      child = InheritedTheme.captureAll(
        context,
        MediaQuery(data: MediaQuery.of(context), child: Material(color: Colors.transparent, child: child)),
      );
    }

    final RenderRepaintBoundary repaintBoundary = RenderRepaintBoundary();

    final RenderView renderView = RenderView(
      window: window,
      child: RenderPositionedBox(alignment: Alignment.center, child: repaintBoundary),
      configuration: ViewConfiguration(
        size: outputImageSize,
        devicePixelRatio: window.devicePixelRatio,
      ),
    );

    final PipelineOwner pipelineOwner = PipelineOwner();
    final BuildOwner buildOwner = BuildOwner(focusManager: FocusManager(), onBuildScheduled: () => isDirty = true);

    pipelineOwner.rootNode = renderView;
    renderView.prepareInitialFrame();

    final RenderObjectToWidgetElement<RenderBox> rootElement = RenderObjectToWidgetAdapter<RenderBox>(
      container: repaintBoundary,
      child: Directionality(
        textDirection: context != null ? Directionality.of(context) : TextDirection.ltr,
        child: child,
      ),
    ).attachToRenderTree(buildOwner);

    buildOwner.buildScope(rootElement);
    buildOwner.finalizeTree();
    pipelineOwner.flushLayout();
    pipelineOwner.flushCompositingBits();
    pipelineOwner.flushPaint();

    ui.Image image;

    do {
      // Reset the dirty flag
      isDirty = false;

      image = await repaintBoundary.toImage(pixelRatio: outputImagePixelRatio ?? 1.0);

      // This delay should increase with widget tree size
      await Future.delayed(delay ?? const Duration(milliseconds: 1000));

      // Check does this require rebuild
      if (isDirty) {
        // Previous capture has been updated, re-render again.
        buildOwner.buildScope(rootElement);
        buildOwner.finalizeTree();
        pipelineOwner.flushLayout();
        pipelineOwner.flushCompositingBits();
        pipelineOwner.flushPaint();
      }

      retryCounter--;
      // Retry until capture is successful
    } while (isDirty && retryCounter >= 0);

    final ByteData? byteData = await image.toByteData(format: outputImageByteFormat ?? ui.ImageByteFormat.png);
    image.dispose();

    return byteData!.buffer.asUint8List();
  }
}
