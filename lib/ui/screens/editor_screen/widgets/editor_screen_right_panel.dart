import 'package:flutter/material.dart' hide Element;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/ui/common/widgets/double_state_text.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/common_functions.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/fonts_dialog.dart';

class EditorScreenRightPanel extends StatelessWidget {
  const EditorScreenRightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<EditorBloc, EditorState>(
        builder: (context, editorState) => Container(
          color: Theme.of(context).colorScheme.secondary,
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
                    // if selected element is any text element:
                    if (el.properties.isStaticTextProperties || el.properties.isVariableTextProperties) ...[
                      _elementSizeText(context, el),
                      _divider(context),
                      _elementFontText(context, el),
                      _divider(context),
                    ],
                    // if selected element is variable text:
                    if (el.properties.isVariableTextProperties) ...[
                      _elementSourceFileText(context, el),
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

  Widget _xPositionText(BuildContext context, editor.Element el) => _createDoubleStateText(
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

  Widget _yPositionText(BuildContext context, editor.Element el) => _createDoubleStateText(
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

  Widget _elementWidthText(BuildContext context, editor.Element el) => _createDoubleStateText(
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

  Widget _elementHeightText(BuildContext context, editor.Element el) => _createDoubleStateText(
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

  Widget _elementSizeText(BuildContext context, editor.Element el) {
    TextStyle? currentTextStyle;
    if (el.properties.isStaticTextProperties) {
      currentTextStyle = (el.properties as editor.StaticTextProperties).textStyle;
    } else if (el.properties.isVariableTextProperties) {
      currentTextStyle = (el.properties as editor.VariableTextProperties).textStyle;
    }

    return _createDoubleStateText(
      context: context,
      initialText: '${AppLocalizations.of(context)!.fontSize}: ${currentTextStyle?.fontSize?.toStringAsFixed(2)}',
      onGainFocus: () => '${currentTextStyle?.fontSize?.toStringAsFixed(2)}',
      onLoseFocus: (updatedValue) {
        double? updatedFontSize = double.tryParse(updatedValue);

        if (updatedFontSize == null || !updatedFontSize.isFinite) {
          updatedFontSize = currentTextStyle?.fontSize;
        }

        changeTextElementProperties(
          context: context,
          element: el,
          updatedTextStyleBuilder: (currentTextStyle) => currentTextStyle?.copyWith(fontSize: updatedFontSize),
        );

        return 'Font: ${currentTextStyle?.fontSize?.toStringAsFixed(2)}';
      },
    );
  }

  Widget _elementSourceFileText(BuildContext context, editor.Element el) => InkWell(
        onTap: () {
          context.read<EditorBloc>().add(const EditorEvent.variableTextFileChanged());
        },
        child: Text('File: ${(el.properties as editor.VariableTextProperties).placeHolderText}',
            textAlign: TextAlign.center),
      );

  Widget _elementFontText(BuildContext context, editor.Element el) {
    TextStyle? style;
    if (el.properties.isStaticTextProperties) {
      style = (el.properties as editor.StaticTextProperties).textStyle;
    } else if (el.properties.isVariableTextProperties) {
      style = (el.properties as editor.VariableTextProperties).textStyle;
    }
    return InkWell(
      onTap: () => _showFontsDialog(el, context),
      child: Text('Font: ${style?.fontFamily?.split('_')[0]}', textAlign: TextAlign.center),
    );
  }

  void _showFontsDialog(editor.Element el, BuildContext context) => showFontsDialog(
        context: context,
        onSelected: (fontFamily) => changeTextElementProperties(
          context: context,
          element: el,
          updatedTextStyleBuilder: (currentTextStyle) => GoogleFonts.getFont(fontFamily, textStyle: currentTextStyle!),
        ),
      );
}
