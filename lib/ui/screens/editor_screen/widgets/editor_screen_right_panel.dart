import 'package:flutter/material.dart' hide Element;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:photo_editor/ui/common/widgets/double_state_text.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditorScreenRightPanel extends StatelessWidget {
  const EditorScreenRightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return BlocBuilder<EditorBloc, EditorState>(
      // TODO: Add options to style the variable and static text, and change the source file of variable text.
      // TODO: then add option to process the data (generate the images with the variables set) and proper error handling
      // TODO: then add option to save the currently edited widget locally or online
      // TODO: remove the widgets below in favor of the widgets mentioned above
      builder: (context, editorState) => Container(
        color: toc.colorScheme.primary,
        child: editorState.selectedElement
            .map<Widget>(
              (el) => ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(AppLocalizations.of(context)!.properties, textAlign: TextAlign.center),
                  ),
                  _divider(context),
                  _xPositionText(context, el),
                  _divider(context),
                  _yPositionText(context, el),
                  _divider(context),
                  _elementWidthText(context, el),
                  _divider(context),
                  _elementHeightText(context, el),
                  _divider(context),
                  // if selected element is text element:
                  if (el.properties.isStaticTextProperties || el.properties.isVariableTextProperties) ...[
                    _elementSizeText(context, el),
                    _divider(context),
                  ],
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Show Order: ${el.showOrder}', textAlign: TextAlign.center),
                  ),
                  _divider(context),
                ],
              ),
            )
            .getOrElse(() => Container()),
      ),
    );
  }

  Divider _divider(BuildContext context) => Divider(color: Theme.of(context).colorScheme.onSecondary);

  Widget _createDoubleStateText({
    required BuildContext context,
    required String initialText,
    required String Function()? onGainFocus,
    required String Function(String)? onLoseFocus,
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

  Widget _xPositionText(BuildContext context, Element el) => _createDoubleStateText(
        context: context,
        initialText: 'x: ${el.rect.topLeft.dx.toStringAsFixed(2)}',
        onGainFocus: () => el.rect.topLeft.dx.toStringAsFixed(2),
        onLoseFocus: (updatedValue) {
          double? updatedX = double.tryParse(updatedValue) ?? el.rect.topLeft.dx;
          context
              .read<EditorBloc>()
              .add(EditorEvent.selectedElementPositionChanged(Offset(updatedX, el.rect.topLeft.dy)));
          return 'x: ${el.rect.topLeft.dx.toStringAsFixed(2)}';
        },
      );

  Widget _yPositionText(BuildContext context, Element el) => _createDoubleStateText(
        context: context,
        initialText: 'y: ${el.rect.topLeft.dy.toStringAsFixed(2)}',
        onGainFocus: () => el.rect.topLeft.dy.toStringAsFixed(2),
        onLoseFocus: (updatedValue) {
          double? updatedY = double.tryParse(updatedValue) ?? el.rect.topLeft.dy;
          context
              .read<EditorBloc>()
              .add(EditorEvent.selectedElementPositionChanged(Offset(el.rect.topLeft.dx, updatedY)));
          return 'y: ${el.rect.topLeft.dy.toStringAsFixed(2)}';
        },
      );

  Widget _elementWidthText(BuildContext context, Element el) => _createDoubleStateText(
        context: context,
        initialText: 'w: ${el.rect.size.width.toStringAsFixed(2)}',
        onGainFocus: () => el.rect.size.width.toStringAsFixed(2),
        onLoseFocus: (updatedValue) {
          double updatedWidth = double.tryParse(updatedValue) ?? -1;

          context
              .read<EditorBloc>()
              .add(EditorEvent.selectedElementSizeChanged(Size(updatedWidth, el.rect.size.height)));
          return 'w: ${el.rect.size.width.toStringAsFixed(2)}';
        },
      );

  Widget _elementHeightText(BuildContext context, Element el) => _createDoubleStateText(
        context: context,
        initialText: 'h: ${el.rect.size.height.toStringAsFixed(2)}',
        onGainFocus: () => el.rect.size.height.toStringAsFixed(2),
        onLoseFocus: (updatedValue) {
          double updatedHeight = double.tryParse(updatedValue) ?? -1;

          context
              .read<EditorBloc>()
              .add(EditorEvent.selectedElementSizeChanged(Size(el.rect.size.width, updatedHeight)));
          return 'h: ${el.rect.height.toStringAsFixed(2)}';
        },
      );

  Widget _elementSizeText(BuildContext context, Element el) {
    TextStyle? currentStyle;

    if (el.properties.isStaticTextProperties) {
      currentStyle = (el.properties as StaticTextProperties).textStyle;
    } else if (el.properties.isVariableTextProperties) {
      currentStyle = (el.properties as VariableTextProperties).textStyle;
    }

    return _createDoubleStateText(
      context: context,
      initialText: 'Font: ${currentStyle?.fontSize?.toStringAsFixed(2)}',
      onGainFocus: () => '${currentStyle?.fontSize?.toStringAsFixed(2)}',
      onLoseFocus: (updatedValue) {
        double? updatedFontSize = double.tryParse(updatedValue);

        if (updatedFontSize == null || !updatedFontSize.isFinite) {
          updatedFontSize = currentStyle?.fontSize;
        }

        TextStyle? updatedTextStyle = currentStyle?.copyWith(fontSize: updatedFontSize);

        if (el.properties.isStaticTextProperties) {
          context.read<EditorBloc>().add(EditorEvent.staticTextStyleChanged(updatedTextStyle: updatedTextStyle));
        } else if (el.properties.isVariableTextProperties) {
          context.read<EditorBloc>().add(EditorEvent.variableTextStyleChanged(updatedTextStyle: updatedTextStyle));
        }
        return 'Font: ${currentStyle?.fontSize?.toStringAsFixed(2)}';
      },
    );
  }
}
