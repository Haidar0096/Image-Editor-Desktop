import 'package:flutter/material.dart';

/// CustomInteractiveViewer is similar to [InteractiveViewer], but it adds widgets drawn on top of its child, one to indicate the zoom level
/// and one to allow the user to re-center the [InteractiveViewer] widget and reset the zoom level.
///
/// For more information about the parameters of this method, see the [InteractiveViewer] class.
class CustomInteractiveViewer extends StatefulWidget {
  final GestureScaleStartCallback? onInteractionStart;
  final GestureScaleUpdateCallback? onInteractionUpdate;
  final GestureScaleEndCallback? onInteractionEnd;
  final EdgeInsets? boundaryMargin;
  final double? minScale;
  final double? maxScale;
  final bool? panEnabled;
  final bool? scaleEnabled;
  final bool? alignPanAxis;
  final double? scaleFactor;
  final Clip? clipBehavior;
  final bool? constrained;

  final Widget child;

  final String? resetZoomButtonTooltip;

  const CustomInteractiveViewer(
      {Key? key,
      required this.child,
      this.resetZoomButtonTooltip,
      this.onInteractionStart,
      this.onInteractionUpdate,
      this.onInteractionEnd,
      this.boundaryMargin,
      this.minScale,
      this.maxScale,
      this.panEnabled,
      this.scaleEnabled,
      this.alignPanAxis,
      this.scaleFactor,
      this.clipBehavior,
      this.constrained})
      : super(key: key);

  @override
  State<CustomInteractiveViewer> createState() => _CustomInteractiveViewerState();
}

class _CustomInteractiveViewerState extends State<CustomInteractiveViewer> {
  /// Controller for the widget's zoom level
  late final TransformationController _canvasScaleController;

  /// The current zoom scale value of the widget.
  late double _canvasScaleValue;

  /// whether the scale value widget should be visible or not.
  bool _canvasScaleValueVisible = false;

  /// Whether the child widget is centered inside the [InteractiveViewer] as it was when it was created.
  bool get _editorCentered => _canvasScaleController.value == Matrix4.identity();

  @override
  void initState() {
    super.initState();
    _canvasScaleValue = 1;
    _canvasScaleController = TransformationController();
  }

  @override
  void dispose() {
    _canvasScaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          child: InteractiveViewer(
            transformationController: _canvasScaleController,
            onInteractionStart: (details) => widget.onInteractionStart?.call(details),
            onInteractionUpdate: (details) => widget.onInteractionUpdate?.call(details),
            onInteractionEnd: (details) {
              widget.onInteractionEnd?.call(details);
              _showScale();
            },
            boundaryMargin: widget.boundaryMargin ?? const EdgeInsets.all(double.infinity),
            minScale: widget.minScale ?? 0.5,
            maxScale: widget.maxScale ?? 10.0,
            panEnabled: widget.panEnabled ?? true,
            scaleEnabled: widget.scaleEnabled ?? true,
            alignPanAxis: widget.alignPanAxis ?? false,
            scaleFactor: widget.scaleFactor ?? 200.0,
            clipBehavior: widget.clipBehavior ?? Clip.hardEdge,
            constrained: widget.constrained ?? true,
            child: LimitedBox(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: MediaQuery.of(context).size.height,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onBackground,
                    width: !_editorCentered ? 3.0 : 0.0,
                  ),
                ),
                width: double.infinity,
                height: double.infinity,
                child: widget.child,
              ),
            ),
          ),
        ),
        // widget that displays the current scale of the canvas
        if (_canvasScaleValueVisible) Positioned.fill(child: _scaleValueWidget(context)),
        // button to restore canvas zoom to 1.0
        if (!_editorCentered) Positioned.fill(child: _resetZoomButton(context)),
      ],
    );
  }

  Align _scaleValueWidget(BuildContext context) => Align(
        alignment: Alignment.center,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Container(
              color: Theme.of(context).colorScheme.secondary,
              width: 100,
              height: 100,
              alignment: Alignment.center,
              child: Text(_canvasScaleValue.toStringAsFixed(2), style: Theme.of(context).textTheme.headline4)),
        ),
      );

  Align _resetZoomButton(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Tooltip(
        message: widget.resetZoomButtonTooltip ?? 'Reset zoom',
        child: InkWell(
          child: Icon(
            Icons.zoom_in_map,
            size: 20,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onTap: () {
            _canvasScaleController.value = Matrix4.identity();
            _showScale();
          },
        ),
      ),
    );
  }

  /// Calls [setState] to show the zoom scale value widget.
  void _showScale() {
    setState(
      () {
        _canvasScaleValue = _canvasScaleController.value.getMaxScaleOnAxis();
        if (!_canvasScaleValueVisible) {
          _canvasScaleValueVisible = true;
          Future.delayed(const Duration(milliseconds: 500), () {
            setState(() {
              _canvasScaleValueVisible = false;
            });
          });
        }
      },
    );
  }
}
