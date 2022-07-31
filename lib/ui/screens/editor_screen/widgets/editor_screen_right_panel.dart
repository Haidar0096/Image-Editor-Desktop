import 'package:flutter/material.dart' hide Element;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:photo_editor/services/editor/editor_extension.dart';
import 'package:photo_editor/ui/common/widgets/double_state_text.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditorScreenRightPanel extends StatelessWidget {
  const EditorScreenRightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, editorState) {
        // TODO: Add options to style the variable and static text, and change the source file of variable text.
        // TODO: then add option to process the data (generate the images with the variables set) and proper error handling
        // TODO: then add option to save the currently edited widget locally or online
        // TODO: remove the widgets below in favor of the widgets mentioned above

        final el = editorState.selectedElementId
            .flatMap((id) => editorState.editor.elementById(id).map((el) => el))
            .toNullable();
        return Container(
          color: toc.colorScheme.primary,
          child: ListView(
            children: [
              if (el != null) ...[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(AppLocalizations.of(context)!.properties, textAlign: TextAlign.center),
                ),
                Divider(color: toc.colorScheme.onSecondary),
                _xPositionText(el, toc, editorState, context),
                Divider(color: toc.colorScheme.onSecondary),
                _yPositionText(el, toc, editorState, context),
                Divider(color: toc.colorScheme.onSecondary),
                _elementWidthText(el, toc, editorState, context),
                Divider(color: toc.colorScheme.onSecondary),
                _elementHeightText(el, toc, editorState, context),
                Divider(color: toc.colorScheme.onSecondary),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Show Order: ${el.showOrder}', textAlign: TextAlign.center),
                ),
                Divider(color: toc.colorScheme.onSecondary),
              ]
            ],
          ),
        );
      },
    );
  }

  Widget _createDoubleStateText({
    required String initialText,
    required String Function()? onGainFocus,
    required String Function(String)? onLoseFocus,
    required BuildContext context,
  }) {
    final ThemeData toc = Theme.of(context);
    return DoubleStateText(
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      inputDecoration: null,
      maxLines: null,
      textAlign: TextAlign.center,
      cursorColor: toc.colorScheme.onPrimary,
      theme: toc.copyWith(
        textSelectionTheme: toc.textSelectionTheme.copyWith(
          selectionHandleColor: toc.colorScheme.onPrimary,
          selectionColor: toc.colorScheme.onPrimary.withOpacity(0.7),
        ),
      ),
      initialText: initialText,
      onGainFocus: onGainFocus,
      onLoseFocus: onLoseFocus,
    );
  }

  Widget _xPositionText(Element el, ThemeData toc, EditorState editorState, BuildContext context) {
    return _createDoubleStateText(
      context: context,
      initialText: 'x: ${el.rect.topLeft.dx.toStringAsFixed(2)}',
      onGainFocus: () {
        late final Offset currentOffset;
        editorState.selectedElementId
            .map((id) => editorState.editor.elementById(id).map((el) => currentOffset = el.rect.topLeft));
        return currentOffset.dx.toStringAsFixed(2);
      },
      onLoseFocus: (updatedValue) {
        late final Offset currentOffset;
        editorState.selectedElementId
            .map((id) => editorState.editor.elementById(id).map((el) => currentOffset = el.rect.topLeft));
        double? updatedX = double.tryParse(updatedValue);
        if (updatedX == null || !updatedX.isFinite) {
          updatedX = currentOffset.dx;
        }
        context.read<EditorBloc>().add(EditorEvent.selectedElementPositionChanged(Offset(updatedX, currentOffset.dy)));
        return 'x: ${updatedX.toStringAsFixed(2)}';
      },
    );
  }

  Widget _yPositionText(Element el, ThemeData toc, EditorState editorState, BuildContext context) {
    return _createDoubleStateText(
      context: context,
      initialText: 'y: ${el.rect.topLeft.dy.toStringAsFixed(2)}',
      onGainFocus: () {
        late final Offset currentOffset;
        editorState.selectedElementId
            .map((id) => editorState.editor.elementById(id).map((el) => currentOffset = el.rect.topLeft));
        return currentOffset.dy.toStringAsFixed(2);
      },
      onLoseFocus: (updatedValue) {
        late final Offset currentOffset;
        editorState.selectedElementId
            .map((id) => editorState.editor.elementById(id).map((el) => currentOffset = el.rect.topLeft));
        double? updatedY = double.tryParse(updatedValue);
        if (updatedY == null || !updatedY.isFinite) {
          updatedY = currentOffset.dy;
        }
        context.read<EditorBloc>().add(EditorEvent.selectedElementPositionChanged(Offset(currentOffset.dx, updatedY)));
        return 'y: ${updatedY.toStringAsFixed(2)}';
      },
    );
  }

  Widget _elementWidthText(Element el, ThemeData toc, EditorState editorState, BuildContext context) {
    return _createDoubleStateText(
      context: context,
      initialText: 'w: ${el.rect.size.width.toStringAsFixed(2)}',
      onGainFocus: () {
        late final Size currentSize;
        editorState.selectedElementId
            .map((id) => editorState.editor.elementById(id).map((el) => currentSize = el.rect.size));
        return currentSize.width.toStringAsFixed(2);
      },
      onLoseFocus: (updatedValue) {
        late final Size currentSize;
        editorState.selectedElementId
            .map((id) => editorState.editor.elementById(id).map((el) => currentSize = el.rect.size));
        double updatedWidth = double.tryParse(updatedValue) ?? -1;

        context.read<EditorBloc>().add(EditorEvent.selectedElementSizeChanged(Size(updatedWidth, currentSize.height)));
        return 'w: ${el.rect.size.width.toStringAsFixed(2)}';
      },
    );
  }

  Widget _elementHeightText(Element el, ThemeData toc, EditorState editorState, BuildContext context) {
    return _createDoubleStateText(
      context: context,
      initialText: 'h: ${el.rect.size.height.toStringAsFixed(2)}',
      onGainFocus: () {
        late final Size currentSize;
        editorState.selectedElementId
            .map((id) => editorState.editor.elementById(id).map((el) => currentSize = el.rect.size));
        return currentSize.height.toStringAsFixed(2);
      },
      onLoseFocus: (updatedValue) {
        late final Size currentSize;
        editorState.selectedElementId
            .map((id) => editorState.editor.elementById(id).map((el) => currentSize = el.rect.size));
        double updatedHeight = double.tryParse(updatedValue) ?? -1;

        context.read<EditorBloc>().add(EditorEvent.selectedElementSizeChanged(Size(currentSize.width, updatedHeight)));
        return 'h: ${el.rect.height.toStringAsFixed(2)}';
      },
    );
  }
}
