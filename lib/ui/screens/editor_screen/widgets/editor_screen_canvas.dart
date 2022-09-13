import 'dart:io';

import 'package:dartz/dartz.dart' show some, none;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/services/editor/editor_extension.dart';
import 'package:photo_editor/ui/common/widgets/custom_interactive_viewer.dart';
import 'package:photo_editor/ui/common/widgets/manipulating_balls_widget.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc/editor_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_element_delegate_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:math' as math;

class EditorScreenCanvas extends StatefulWidget {
  const EditorScreenCanvas({Key? key}) : super(key: key);

  @override
  State<EditorScreenCanvas> createState() => _EditorScreenCanvasState();
}

class _EditorScreenCanvasState extends State<EditorScreenCanvas> {
  // this key is used to locate the coordinate system of the canvas widget correctly
  final GlobalKey _editorCanvasContainerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => context
        .read<EditorBloc>()
        .add(EditorEvent.setCanvasKey(some(_editorCanvasContainerKey))));
    RawKeyboard.instance.addListener(_keyboardKeysListener);
  }

  @override
  void dispose() {
    RawKeyboard.instance.removeListener(_keyboardKeysListener);
    context.read<EditorBloc>().add(EditorEvent.setCanvasKey(none()));
    super.dispose();
  }

  // listen to the relevant keys
  void _keyboardKeysListener(RawKeyEvent event) {
    bool isEditingText = context.read<EditorBloc>().state.isEditingTextElement;

    if (event is RawKeyUpEvent &&
        event.logicalKey == LogicalKeyboardKey.delete) {
      BlocProvider.of<EditorBloc>(context).add(const RemoveSelectedElement());
    }
    if (event is RawKeyDownEvent &&
        event.isControlPressed &&
        event.isKeyPressed(LogicalKeyboardKey.keyZ) &&
        !isEditingText) {
      BlocProvider.of<EditorBloc>(context).add(const EditorEvent.undo());
    }
    if (event is RawKeyDownEvent &&
        event.isControlPressed &&
        event.isKeyPressed(LogicalKeyboardKey.keyY)) {
      BlocProvider.of<EditorBloc>(context).add(const EditorEvent.redo());
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return Container(
      color: toc.colorScheme.tertiary,
      child: CustomInteractiveViewer(
        resetZoomButtonTooltip: AppLocalizations.of(context)!.resetSize,
        maxScale: 10.0,
        child: _editorComponents(context),
      ),
    );
  }

  Widget _editorComponents(BuildContext context) {
    final toc = Theme.of(context);
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, editorState) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          key: _editorCanvasContainerKey,
          color: editorState.canvasBackgroundColor.toNullable() ??
              toc.colorScheme.background,
          child: Stack(
            children: [
              if (editorState.canvasBackgroundImageFile.isSome())
                Positioned.fill(
                  child: Image.file(
                    File(editorState.canvasBackgroundImageFile
                        .toNullable()!
                        .path),
                    fit: BoxFit.fill,
                  ),
                ),
              // gesture detector that fills the editor canvas to detect gestures on empty areas on the canvas
              Positioned.fill(
                child: _canvasEmptyAreaGestureDetector(context),
              ),
              // map elements of the editor each to a widget
              ..._mapEditorElements(context, editorState).toList(),
            ],
          ),
        );
      },
    );
  }

  GestureDetector _canvasEmptyAreaGestureDetector(BuildContext context) {
    return GestureDetector(
      onPanStart: (details) {
        context
            .read<EditorBloc>()
            .add(EditorEvent.canvasDragStart(details.localPosition));
      },
      onPanUpdate: (details) {
        context
            .read<EditorBloc>()
            .add(EditorEvent.canvasDragUpdate(details.delta));
      },
      onPanEnd: (details) {
        context.read<EditorBloc>().add(const EditorEvent.canvasDragEnd());
      },
      onTapUp: (details) {
        context.read<EditorBloc>().add(const EditorEvent.canvasTap());
      },
    );
  }

  Iterable<Positioned> _mapEditorElements(
      BuildContext context, EditorState editorState) {
    return editorState.editor.elementsSortedByShowOrder.map(
      (element) {
        // check if current element is selected
        bool isSelected = editorState.selectedElement
            .map((el) => element.id == el.id)
            .getOrElse(() => false);

        // map each element to its specific widget
        Widget child = EditorElementDelegateWidget(element: element);

        // Special handling for the selected element (decoration...)
        if (isSelected) {
          // decorate the selected element with a border
          child = _decoratedContainer(
              child: child,
              width: element.rect.width,
              height: element.rect.height,
              color: Colors.red);

          // make the selected element resizable
          child = _resizableWidget(
              context,
              element.rect.size.longestSide / 100 +
                  math.log(element.rect.size.longestSide),
              child);
        }

        // wrap the element with a gesture detector to detect tap and drag events that occur on it
        child = _elementGestureDetector(context, element, child);

        // wrap the element with positioned to position it in the stack
        return Positioned(
          left: element.rect.left,
          top: element.rect.top,
          width: element.rect.width,
          height: element.rect.height,
          child: child,
        );
      },
    );
  }

  ManipulatingBallsWidget _resizableWidget(
      BuildContext context, double ballDiameter, Widget child) {
    return ManipulatingBallsWidget(
      ballDiameter: ballDiameter,
      onResizeTopLeft: (details) {
        context.read<EditorBloc>().add(
            EditorEvent.resizeUpdate(ResizeDirection.topLeft, details.delta));
      },
      onResizeTopCenter: (details) {
        context.read<EditorBloc>().add(
            EditorEvent.resizeUpdate(ResizeDirection.topCenter, details.delta));
      },
      onResizeTopRight: (details) {
        context.read<EditorBloc>().add(
            EditorEvent.resizeUpdate(ResizeDirection.topRight, details.delta));
      },
      onResizeCenterRight: (details) {
        context.read<EditorBloc>().add(EditorEvent.resizeUpdate(
            ResizeDirection.centerRight, details.delta));
      },
      onResizeBottomRight: (details) {
        context.read<EditorBloc>().add(EditorEvent.resizeUpdate(
            ResizeDirection.bottomRight, details.delta));
      },
      onResizeBottomCenter: (details) {
        context.read<EditorBloc>().add(EditorEvent.resizeUpdate(
            ResizeDirection.bottomCenter, details.delta));
      },
      onResizeBottomLeft: (details) {
        context.read<EditorBloc>().add(EditorEvent.resizeUpdate(
            ResizeDirection.bottomLeft, details.delta));
      },
      onResizeCenterLeft: (details) {
        context.read<EditorBloc>().add(EditorEvent.resizeUpdate(
            ResizeDirection.centerLeft, details.delta));
      },
      onResizeEnd: (details) {
        context.read<EditorBloc>().add(const EditorEvent.resizeEnd());
      },
      child: child,
    );
  }

  GestureDetector _elementGestureDetector(
      BuildContext context, editor.Element el, Widget child) {
    return GestureDetector(
      onPanStart: (details) {
        final Offset localPosition = (_editorCanvasContainerKey.currentContext!
                .findRenderObject() as RenderBox)
            .globalToLocal(details.globalPosition);
        context
            .read<EditorBloc>()
            .add(EditorEvent.elementDragStart(el, localPosition));
      },
      onPanUpdate: (details) {
        context
            .read<EditorBloc>()
            .add(EditorEvent.elementDragUpdate(details.delta));
      },
      onPanEnd: (details) {
        context.read<EditorBloc>().add(const EditorEvent.elementDragEnd());
      },
      onTapUp: (details) {
        context.read<EditorBloc>().add(EditorEvent.elementTap(el));
      },
      child: child,
    );
  }

  Stack _decoratedContainer(
      {required Widget child,
      required double width,
      required double height,
      required Color color}) {
    return Stack(
      children: [
        Positioned.fill(child: child),
        Positioned.fill(
          child: IgnorePointer(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: color, width: 5.0),
              ),
              width: width,
              height: height,
            ),
          ),
        ),
      ],
    );
  }
}
