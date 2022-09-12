import 'package:flutter/material.dart';
import 'package:photo_editor/services/fonts_service/fonts_service.dart';
import 'package:photo_editor/ui/common/widgets/list_dialog.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Shows the fonts dialog.
void showFontsDialog({
  required BuildContext context,

  /// A callback that is called when the user selects a font.
  required Function(String fontFamily) onSelected,

  /// The number of fonts to show per page (used for paginating the fonts to improve loading times).
  int? resultsPerPage,
}) {
  final ThemeData toc = Theme.of(context);
  final List<String> fonts = FontsService.getAvailableFontsNames();
  showListDialog<String>(
    context: context,
    title: Text(
      AppLocalizations.of(context)!.fontFamily,
    ),
    data: fonts,
    dataMapper: (fontFamily) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Text(
          fontFamily,
          style:
              // TODO: do something about the loading time of the fonts, maybe wrap each font in a future builder
              // FontsService.getFont(fontFamily, textStyle: TextStyle(fontSize: 40, color: toc.colorScheme.onBackground)),
              TextStyle(fontSize: 40, color: toc.colorScheme.onBackground),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    onSelected: (fontFamily) {
      onSelected(fontFamily);
      Navigator.of(context).pop();
    },
    resultsPerPage: resultsPerPage ?? 2000,
    cacheExtent: 100,
  );
}
