import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/ui/common/widgets/coming_soon_dialog.dart';
import 'package:photo_editor/ui/screens/about_screen/about_screen.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/settings_dialog.dart';

class EditorScreenAppBar extends StatelessWidget {
  const EditorScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return Container(
      color: toc.colorScheme.secondary,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Text(
                AppLocalizations.of(context)!.file,
                style: toc.textTheme.titleMedium,
              ),
              onTap: () {
                // TODO: Implement "file" menu
                showComingSoonDialog(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Text(
                AppLocalizations.of(context)!.settings,
                style: toc.textTheme.titleMedium,
              ),
              onTap: () {
                showSettingsDialog(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Text(
                AppLocalizations.of(context)!.about,
                style: toc.textTheme.titleMedium,
              ),
              onTap: () {
                Navigator.of(context).pushNamed(AboutScreen.routeName);
              },
            ),
          )
        ],
      ),
    );
  }
}
