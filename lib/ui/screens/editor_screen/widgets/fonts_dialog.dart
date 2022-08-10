import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/ui/common/widgets/list_dialog.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';

void showFontsDialog(BuildContext context, editor.Element el) {
  final ThemeData toc = Theme.of(context);
  final fontsMap = GoogleFonts.asMap();
  final options = fontsMap.keys.toList();
  showListDialog<String>(
    context: context,
    title: Text(
      AppLocalizations.of(context)!.fontFamily,
    ),
    options: options,
    optionsWidgets: options
        .map(
          (fontName) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: MouseRegion(
              cursor: SystemMouseCursors.grab,
              child: Text(
                fontName,
                style: GoogleFonts.getFont(fontName,
                    textStyle: TextStyle(fontSize: 40, color: toc.colorScheme.onBackground)),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
        .toList(),
    onSelected: (fontFamily) {
      late final TextStyle? selectedElementTextStyle;
      if (el.properties.isStaticTextProperties) {
        selectedElementTextStyle = (el.properties as editor.StaticTextProperties).textStyle;
      } else if (el.properties.isVariableTextProperties) {
        selectedElementTextStyle = (el.properties as editor.VariableTextProperties).textStyle;
      }

      TextStyle updatedTextStyle = GoogleFonts.getFont(fontFamily, textStyle: selectedElementTextStyle!);

      if (el.properties.isStaticTextProperties) {
        context.read<EditorBloc>().add(EditorEvent.staticTextStyleChanged(updatedTextStyle: updatedTextStyle));
      } else if (el.properties.isVariableTextProperties) {
        context.read<EditorBloc>().add(EditorEvent.variableTextStyleChanged(updatedTextStyle: updatedTextStyle));
      }
      Navigator.of(context).pop();
    },
  );
}
