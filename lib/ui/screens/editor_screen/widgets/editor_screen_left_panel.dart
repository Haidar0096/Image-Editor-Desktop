import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/services/fonts_service/fonts_service.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';

import 'common_editor_functions.dart' as common_editor_functions;
import 'fonts_dialog.dart';

class EditorScreenLeftPanel extends StatelessWidget {
  const EditorScreenLeftPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    final MediaQueryData moc = MediaQuery.of(context);
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, editorState) => Container(
        color: toc.colorScheme.secondary,
        child: ListView(
          children: [
            _createLeftPanelAction(
              context: context,
              tooltipMessage: AppLocalizations.of(context)!.addImage,
              icon: Icons.add_a_photo,
              onTap: () => context.read<EditorBloc>().add(const EditorEvent.addImage()),
            ),
            _createLeftPanelAction(
              context: context,
              tooltipMessage: AppLocalizations.of(context)!.addStaticText,
              icon: Icons.text_fields_outlined,
              onTap: () => context.read<EditorBloc>().add(
                    EditorEvent.addStaticText(
                      initialText: AppLocalizations.of(context)!.typeText,
                      textDirection: Directionality.of(context),
                      minWidth: 0.0,
                      maxWidth: moc.size.width,
                    ),
                  ),
            ),
            _createLeftPanelAction(
              context: context,
              tooltipMessage: AppLocalizations.of(context)!.addVariableText,
              icon: Icons.functions_outlined,
              onTap: () => context.read<EditorBloc>().add(
                    EditorEvent.addVariableText(
                      initialText: AppLocalizations.of(context)!.generatedTextAppearsHere,
                      textDirection: Directionality.of(context),
                      minWidth: 0.0,
                      maxWidth: moc.size.width,
                    ),
                  ),
            ),
            _createLeftPanelAction(
              context: context,
              tooltipMessage: AppLocalizations.of(context)!.undo,
              icon: Icons.undo,
              onTap: () => context.read<EditorBloc>().add(const EditorEvent.undo()),
            ),
            _createLeftPanelAction(
              context: context,
              tooltipMessage: AppLocalizations.of(context)!.redo,
              icon: Icons.redo,
              onTap: () => context.read<EditorBloc>().add(const EditorEvent.redo()),
            ),
            _createLeftPanelAction(
              context: context,
              tooltipMessage: AppLocalizations.of(context)!.clearEditor,
              icon: Icons.clear,
              onTap: () => context.read<EditorBloc>().add(const EditorEvent.clearEditor()),
            ),
            // if there is selected element:
            ...editorState.selectedElement
                .map(
                  (el) => [
                    _createLeftPanelAction(
                      context: context,
                      tooltipMessage: AppLocalizations.of(context)!.bringToFront,
                      icon: Icons.flip_to_front,
                      onTap: () => context.read<EditorBloc>().add(const EditorEvent.bringSelectedElementToFront()),
                    ),
                    _createLeftPanelAction(
                      context: context,
                      tooltipMessage: AppLocalizations.of(context)!.removeElement,
                      icon: Icons.delete,
                      onTap: () => context.read<EditorBloc>().add(const EditorEvent.removeSelectedElement()),
                    ),
                    _createLeftPanelAction(
                      context: context,
                      tooltipMessage: AppLocalizations.of(context)!.deselect,
                      icon: Icons.deselect,
                      onTap: () => context.read<EditorBloc>().add(const EditorEvent.deselectElement()),
                    ),
                    // if selected element is variable text:
                    if (el.properties.isVariableTextProperties)
                      _createLeftPanelAction(
                        context: context,
                        tooltipMessage: AppLocalizations.of(context)!.chooseVariableTextSourceFile,
                        icon: Icons.source,
                        onTap: () => context.read<EditorBloc>().add(const EditorEvent.variableTextFileChanged()),
                      ),
                    // if selected element is any text element:
                    if (el.properties.isStaticTextProperties || el.properties.isVariableTextProperties) ...[
                      _createLeftPanelAction(
                        context: context,
                        tooltipMessage: AppLocalizations.of(context)!.textJustification,
                        icon: Icons.format_align_justify,
                        onTap: () => _changeTextJustification(el, context),
                      ),
                      _createLeftPanelAction(
                        context: context,
                        tooltipMessage: AppLocalizations.of(context)!.makeTextLarger,
                        icon: Icons.text_increase_rounded,
                        onTap: () => _makeTextLarger(el, context),
                      ),
                      _createLeftPanelAction(
                        context: context,
                        tooltipMessage: AppLocalizations.of(context)!.makeTextSmaller,
                        icon: Icons.text_decrease_rounded,
                        onTap: () => _makeTextSmaller(el, context),
                      ),
                      _createLeftPanelAction(
                        context: context,
                        tooltipMessage: AppLocalizations.of(context)!.fontFamily,
                        icon: Icons.font_download,
                        onTap: () => _showFontsDialog(el, context),
                      ),
                    ]
                  ],
                )
                .getOrElse(() => []),
          ],
        ),
      ),
    );
  }

  void _changeTextJustification(editor.Element element, BuildContext context) =>
      common_editor_functions.changeTextElementProperties(
        context: context,
        element: element,
        updatedTextAlignBuilder: (currentTextAlign) {
          List<TextAlign> values = [TextAlign.start, TextAlign.center, TextAlign.end];
          int nextIndex = (values.indexOf(currentTextAlign ?? values[0]) + 1) % values.length;
          return values[nextIndex];
        },
      );

  void _makeTextLarger(editor.Element element, BuildContext context) =>
      common_editor_functions.changeTextElementProperties(
        context: context,
        element: element,
        updatedTextStyleBuilder: (currentTextStyle) =>
            currentTextStyle!.copyWith(fontSize: currentTextStyle.fontSize! + 1),
      );

  void _makeTextSmaller(editor.Element element, BuildContext context) =>
      common_editor_functions.changeTextElementProperties(
        context: context,
        element: element,
        updatedTextStyleBuilder: (currentTextStyle) =>
            currentTextStyle!.copyWith(fontSize: currentTextStyle.fontSize! - 1),
      );

  void _showFontsDialog(editor.Element el, BuildContext context) => showFontsDialog(
        context: context,
        onSelected: (fontFamily) => common_editor_functions.changeTextElementProperties(
          context: context,
          element: el,
          updatedTextStyleBuilder: (currentTextStyle) => FontsService.getFont(fontFamily, textStyle: currentTextStyle!),
        ),
      );

  Widget _createLeftPanelAction({
    required BuildContext context,
    required String tooltipMessage,
    required IconData icon,
    Color? iconColor,
    required VoidCallback onTap,
  }) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Tooltip(
          message: tooltipMessage,
          child: InkWell(
            onTap: onTap,
            child: Icon(
              icon,
              color: iconColor ?? Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      );
}
