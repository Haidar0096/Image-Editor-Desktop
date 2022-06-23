import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:dartz/dartz.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:photo_editor/common/failure/failure.dart';
import 'package:photo_editor/extensions/double_extension.dart';
import 'package:photo_editor/services/screenshot_service/screenshot_service.dart';

/// The default implementation of ScreenshotService. It uses a 3rd party package to implement the contract.
class ScreenshotServiceDefaultImpl implements ScreenshotService {
  @override
  Future<Either<Failure, Uint8List>> captureWidget({
    widgets.BuildContext? context,
    required widgets.Widget widget,
  }) async {
    try {
      final Uint8List data = await _captureFromWidget(
        widget,
        context: context,
      );
      return right(data);
    } on Exception catch (e) {
      return Left(CaptureWidgetFailure(e));
    }
  }

  /// [context] parameter is used to Inherit App Theme and MediaQuery data.
  Future<Uint8List> _captureFromWidget(
    widgets.Widget widget, {
    // Duration delay = const Duration(seconds: 1),
    double? pixelRatio,
    widgets.BuildContext? context,
  }) async {
    // Retry counter
    int retryCounter = 3;
    bool isDirty = false;

    widgets.Widget child = widget;

    if (context != null) {
      // Inherit Theme and MediaQuery of app
      child = widgets.InheritedTheme.captureAll(
        context,
        widgets.MediaQuery(data: widgets.MediaQuery.of(context), child: child),
      );
    }

    final RenderRepaintBoundary repaintBoundary = RenderRepaintBoundary();

    Size logicalSize = ui.window.physicalSize / ui.window.devicePixelRatio;
    Size imageSize = ui.window.physicalSize;

    assert(logicalSize.aspectRatio.toPrecision(5) ==
        imageSize.aspectRatio.toPrecision(5));

    final RenderView renderView = RenderView(
      window: ui.window,
      child: RenderPositionedBox(
          alignment: Alignment.center, child: repaintBoundary),
      configuration: ViewConfiguration(
        size: logicalSize,
        devicePixelRatio: pixelRatio ?? 1.0,
      ),
    );

    final PipelineOwner pipelineOwner = PipelineOwner();
    final widgets.BuildOwner buildOwner = widgets.BuildOwner(
        focusManager: widgets.FocusManager(),
        onBuildScheduled: () {
          ///
          ///current render is dirty, mark it.
          ///
          isDirty = true;
        });

    pipelineOwner.rootNode = renderView;
    renderView.prepareInitialFrame();

    final widgets.RenderObjectToWidgetElement<RenderBox> rootElement =
        widgets.RenderObjectToWidgetAdapter<RenderBox>(
            container: repaintBoundary,
            child: widgets.Directionality(
              textDirection: TextDirection.ltr,
              child: child,
            )).attachToRenderTree(
      buildOwner,
    );
    // Render Widget
    buildOwner.buildScope(
      rootElement,
    );
    buildOwner.finalizeTree();

    pipelineOwner.flushLayout();
    pipelineOwner.flushCompositingBits();
    pipelineOwner.flushPaint();

    ui.Image? image;

    do {
      // Reset the dirty flag
      isDirty = false;

      image = await repaintBoundary.toImage(
          pixelRatio: pixelRatio ?? (imageSize.width / logicalSize.width));

      // // This delay should increase with Widget tree Size
      // await Future.delayed(delay);

      // Check does this require rebuild
      if (isDirty) {
        // Previous capture has been updated, re-render again.
        buildOwner.buildScope(
          rootElement,
        );
        buildOwner.finalizeTree();
        pipelineOwner.flushLayout();
        pipelineOwner.flushCompositingBits();
        pipelineOwner.flushPaint();
      }
      retryCounter--;
      //retry until capture is successful
    } while (isDirty && retryCounter >= 0);

    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);

    return byteData!.buffer.asUint8List();
  }
}
