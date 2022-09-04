import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/ui/common/widgets/bar.dart';
import 'package:photo_editor/ui/common/widgets/coming_soon_dialog.dart';
import 'package:photo_editor/ui/screens/about_screen/about_screen.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/settings_dialog.dart';

class EditorScreenAppBar extends StatelessWidget {
  const EditorScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return Bar(
      backgroundColor: toc.colorScheme.primary,
      mainAxis: Axis.horizontal,
      actions: [
        _buildBarAction(
          context,
          AppLocalizations.of(context)!.file,
          () => showComingSoonDialog(context),
        ),
        _buildBarAction(
          context,
          AppLocalizations.of(context)!.settings,
          () => showSettingsDialog(context),
        ),
        _buildBarAction(
          context,
          AppLocalizations.of(context)!.about,
          () => Navigator.of(context).pushNamed(AboutScreen.routeName),
        ),
      ],
    );
  }

  BarAction _buildBarAction(
    BuildContext context,
    String text,
    VoidCallback onTap,
  ) {
    final ThemeData toc = Theme.of(context);
    return BarAction(
      onTap: onTap,
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: toc.textTheme.subtitle2,
      ),
    );
  }
}
