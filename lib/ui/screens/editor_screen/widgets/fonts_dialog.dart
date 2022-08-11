import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_editor/ui/common/widgets/list_dialog.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

List<String> fonts = GoogleFonts.asMap().keys.toList(growable: false);

void showFontsDialog({
  required BuildContext context,
  required Function(String fontFamily) onSelected,
}) {
  final ThemeData toc = Theme.of(context);
  showListDialog<String>(
    context: context,
    title: Text(
      AppLocalizations.of(context)!.fontFamily,
    ),
    options: fonts,
    optionMapper: (fontName) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.grab,
        child: Text(
          fontName,
          style: GoogleFonts.getFont(fontName, textStyle: TextStyle(fontSize: 40, color: toc.colorScheme.onBackground)),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    onSelected: (fontFamily) {
      onSelected(fontFamily);
      Navigator.of(context).pop();
    },
  );
}
