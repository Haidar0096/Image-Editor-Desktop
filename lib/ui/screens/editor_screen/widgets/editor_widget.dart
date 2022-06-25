import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'editor_element_widget_delegate.dart';

class EditorWidget extends StatefulWidget {
  final BoxConstraints constraints;

  const EditorWidget({Key? key, required this.constraints}) : super(key: key);

  @override
  State<EditorWidget> createState() => _EditorWidgetState();
}

class _EditorWidgetState extends State<EditorWidget> {
  /// Controller for the editor's zoom level
  late final TransformationController _scaleController;

  /// The current zoom scale value of the editor
  late double _scaleValue;

  /// whether the scale value widget should be visible or not
  bool _scaleValueVisible = false;

  /// Whether the editor widget is centered as it was when it was created.
  bool get _editorCentered => _scaleController.value == Matrix4.identity();

  @override
  void initState() {
    super.initState();
    _scaleValue = 1;
    _scaleController = TransformationController();
  }

  @override
  void dispose() {
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, state) {
        return Container(
          color: Theme.of(context).colorScheme.background,
          child: _zoomableEditorWidget(context),
        );
      },
    );
  }

  InteractiveViewer _zoomableEditorWidget(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return InteractiveViewer(
      transformationController: _scaleController,
      onInteractionEnd: (details) => _showScale(),
      boundaryMargin: const EdgeInsets.all(double.infinity),
      minScale: 0.5,
      maxScale: 5.0,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: toc.colorScheme.onBackground,
            width: !_editorCentered ? 2.0 : 0.0,
          ),
        ),
        width: widget.constraints.maxWidth,
        height: widget.constraints.maxHeight,
        child: _editorComponents(context),
      ),
    );
  }

  Widget _editorComponents(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapUp: (details) {
        context.read<EditorBloc>().add(TapUpEditorEvent(details.localPosition));
      },
      onPanStart: (details) {
        context.read<EditorBloc>().add(DragStartEditorEvent(details.localPosition));
      },
      onPanUpdate: (details) {
        context.read<EditorBloc>().add(DragUpdateEditorEvent(details.localPosition));
      },
      onPanEnd: (details) {
        context.read<EditorBloc>().add(const DragEndEditorEvent());
      },
      child: Stack(
        children: [
          ..._editorElementsWidgets(context),
          if (_scaleValueVisible) _scaleValueWidget(context),
          if (!_editorCentered) _resetZoomButton(context)
        ],
      ),
    );
  }

  Iterable<Widget> _editorElementsWidgets(BuildContext context) {
    return context.read<EditorBloc>().state.editor.elements.sorted((a, b) => a.showOrder.compareTo(b.showOrder)).map(
      (element) {
        // create widget based on element type
        Widget stackChild = EditorElementWidgetDelegate(element: element);

        // wrap with Positioned
        stackChild = Positioned.fromRect(
          rect: element.rect,
          child: stackChild,
        );

        return stackChild;
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
