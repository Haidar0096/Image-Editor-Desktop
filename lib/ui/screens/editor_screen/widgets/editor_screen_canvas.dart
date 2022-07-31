import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/services/editor/editor_extension.dart';
import 'package:photo_editor/ui/common/widgets/manipulating_balls_widget.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_element_delegate_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:math' as math;

class EditorScreenCanvas extends StatefulWidget {
  const EditorScreenCanvas({Key? key}) : super(key: key);

  @override
  State<EditorScreenCanvas> createState() => _EditorScreenCanvasState();
}

class _EditorScreenCanvasState extends State<EditorScreenCanvas> {
  final GlobalKey _editorCanvasContainerKey = GlobalKey();

  /// Controller for the editor's zoom level
  late final TransformationController _scaleController;

  /// The current zoom scale value of the editor
  late double _scaleValue;

  /// whether the scale value widget should be visible or not
  bool _scaleValueVisible = false;

  /// Whether the editor widget is centered as it was when it was created.
  bool get _editorCentered => _scaleController.value == Matrix4.identity();

  late void Function(RawKeyEvent) _deleteKeyListener;

  @override
  void initState() {
    super.initState();
    _scaleValue = 1;
    _scaleController = TransformationController();

    _deleteKeyListener = (RawKeyEvent event) {
      if (event is RawKeyDownEvent && event.logicalKey == LogicalKeyboardKey.delete) {
        BlocProvider.of<EditorBloc>(context).add(const RemoveSelectedElement());
      }
    };
    RawKeyboard.instance.addListener(_deleteKeyListener);
  }

  @override
  void dispose() {
    _scaleController.dispose();

    RawKeyboard.instance.removeListener(_deleteKeyListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return Container(
      color: toc.colorScheme.tertiary,
      child: InteractiveViewer(
        transformationController: _scaleController,
        onInteractionEnd: (details) => _showScale(),
        boundaryMargin: const EdgeInsets.all(double.infinity),
        minScale: 0.5,
        maxScale: 10.0,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: toc.colorScheme.onBackground,
              width: !_editorCentered ? 3.0 : 0.0,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: _editorComponents(context),
        ),
      ),
    );
  }

  Widget _editorComponents(BuildContext context) {
    final toc = Theme.of(context);
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, editorState) {
        return Container(
          key: _editorCanvasContainerKey,
          color: toc.colorScheme.background,
          child: Stack(
            children: [
              // gesture detector that fills the stack to detect gestures on the canvas
              Positioned.fill(
                child: GestureDetector(
                  onPanStart: (details) {
                    context.read<EditorBloc>().add(EditorEvent.canvasDragStart(details.localPosition));
                  },
                  onPanUpdate: (details) {
                    context.read<EditorBloc>().add(EditorEvent.canvasDragUpdate(details.delta));
                  },
                  onPanEnd: (details) {
                    context.read<EditorBloc>().add(const EditorEvent.canvasDragEnd());
                  },
                  onTapUp: (details) {
                    context.read<EditorBloc>().add(const EditorEvent.canvasTap());
                  },
                ),
              ),
              // elements of the editor mapped each to the corresponding widget
              ...editorState.editor.elementsSortedByShowOrder.map(
                (element) {
                  // check if this element is selected
                  bool isSelected =
                      editorState.selectedElementId.map((elId) => element.id == elId).getOrElse(() => false);

                  // each element is mapped to the corresponding widget
                  Widget child = EditorElementDelegateWidget(element: element, isSelected: isSelected);

                  // wrap the element with a gesture detector to detect events that occur on it
                  child = GestureDetector(
                    onPanStart: (details) {
                      final Offset localPosition =
                          (_editorCanvasContainerKey.currentContext!.findRenderObject() as RenderBox)
                              .globalToLocal(details.globalPosition);
                      context.read<EditorBloc>().add(EditorEvent.elementDragStart(element.id, localPosition));
                    },
                    onPanUpdate: (details) {
                      context.read<EditorBloc>().add(EditorEvent.elementDragUpdate(details.delta));
                    },
                    onPanEnd: (details) {
                      context.read<EditorBloc>().add(const EditorEvent.elementDragEnd());
                    },
                    onTapUp: (details) {
                      context.read<EditorBloc>().add(EditorEvent.elementTap(element.id));
                    },
                    child: child,
                  );

                  if (isSelected) {
                    // decorate the selected element
                    child = Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red, width: 5.0),
                      ),
                      child: child,
                    );

                    // make the selected element resizable
                    child = ManipulatingBallsWidget(
                      ballDiameter: element.rect.size.longestSide / 100 + math.log(element.rect.size.longestSide),
                      onResizeTopLeft: (details) {
                        context
                            .read<EditorBloc>()
                            .add(EditorEvent.resizeUpdate(ResizeDirection.topLeft, details.delta));
                      },
                      onResizeTopCenter: (details) {
                        context
                            .read<EditorBloc>()
                            .add(EditorEvent.resizeUpdate(ResizeDirection.topCenter, details.delta));
                      },
                      onResizeTopRight: (details) {
                        context
                            .read<EditorBloc>()
                            .add(EditorEvent.resizeUpdate(ResizeDirection.topRight, details.delta));
                      },
                      onResizeCenterRight: (details) {
                        context
                            .read<EditorBloc>()
                            .add(EditorEvent.resizeUpdate(ResizeDirection.centerRight, details.delta));
                      },
                      onResizeBottomRight: (details) {
                        context
                            .read<EditorBloc>()
                            .add(EditorEvent.resizeUpdate(ResizeDirection.bottomRight, details.delta));
                      },
                      onResizeBottomCenter: (details) {
                        context
                            .read<EditorBloc>()
                            .add(EditorEvent.resizeUpdate(ResizeDirection.bottomCenter, details.delta));
                      },
                      onResizeBottomLeft: (details) {
                        context
                            .read<EditorBloc>()
                            .add(EditorEvent.resizeUpdate(ResizeDirection.bottomLeft, details.delta));
                      },
                      onResizeCenterLeft: (details) {
                        context
                            .read<EditorBloc>()
                            .add(EditorEvent.resizeUpdate(ResizeDirection.centerLeft, details.delta));
                      },
                      onResizeEnd: (details) {
                        context.read<EditorBloc>().add(const EditorEvent.resizeEnd());
                      },
                      child: child,
                    );
                  }

                  // wrap the element with positioned to position it in the stack
                  return Positioned(
                    left: element.rect.topLeft.dx,
                    top: element.rect.topLeft.dy,
                    width: element.rect.width,
                    height: element.rect.height,
                    child: child,
                  );
                },
              ).toList(),
              // widget that displays the current scale of the canvas
              if (_scaleValueVisible) _scaleValueWidget(context),
              // button to restore canvas zoom to 1.0
              if (!_editorCentered) _resetZoomButton(context),
            ],
          ),
        );
      },
    );
  }

  Align _scaleValueWidget(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          width: 100,
          height: 100,
          alignment: Alignment.center,
          child: Text(
            _scaleValue.toStringAsFixed(2),
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }

  Align _resetZoomButton(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Tooltip(
        message: AppLocalizations.of(context)!.resetSize,
        child: InkWell(
          child: Icon(
            Icons.zoom_in_map,
            size: 20,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onTap: () {
            _scaleController.value = Matrix4.identity();
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
        _scaleValue = _scaleController.value.getMaxScaleOnAxis();
        if (!_scaleValueVisible) {
          _scaleValueVisible = true;
          Future.delayed(const Duration(milliseconds: 500), () {
            setState(() {
              _scaleValueVisible = false;
            });
          });
        }
      },
    );
  }
}
