import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/ui/common/widgets/custom_popup_menu.dart';
import 'package:photo_editor/ui/screens/about_screen/about_screen.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:photo_editor/ui/screens/settings_screen/settings_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditorAppBar extends StatelessWidget {
  const EditorAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toc = Theme.of(context);
    return Container(
      color: toc.colorScheme.secondary,
      child: Column(
        children: [
          Expanded(
            flex: 49,
            child: _buildUpperRow(context, toc),
          ),
          Expanded(
            flex: 1,
            child: Divider(
              color: toc.colorScheme.onBackground,
            ),
          ),
          Expanded(
            flex: 49,
            child: _buildLowerRow(context),
          ),
          Expanded(
            flex: 1,
            child: Divider(
              color: toc.colorScheme.onBackground,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUpperRow(BuildContext context, ThemeData toc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Material(
            color: Colors.transparent,
            child: _buildDropDownMenu(context),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              child: Text(
                AppLocalizations.of(context)!.settings,
                style: toc.textTheme.bodyMedium,
              ),
              onTap: () {
                Navigator.of(context).pushNamed(SettingsScreen.routeName);
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              child: Text(
                AppLocalizations.of(context)!.about,
                style: toc.textTheme.bodyMedium,
              ),
              onTap: () =>
                  Navigator.of(context).pushNamed(AboutScreen.routeName),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLowerRow(BuildContext context) {
    return Row(
      children: [
        _lowerRowAction(
          iconData: Icons.undo,
          message: AppLocalizations.of(context)!.undo,
          onPressed: () {
            context.read<EditorBloc>().add(const EditorUndoTapped());
          },
        ),
        _lowerRowAction(
          iconData: Icons.redo,
          message: AppLocalizations.of(context)!.redo,
          onPressed: () {
            context.read<EditorBloc>().add(const EditorRedoTapped());
          },
        ),
        _lowerRowAction(
          iconData: Icons.text_fields_outlined,
          message: AppLocalizations.of(context)!.addStaticText,
          onPressed: () {
            context.read<EditorBloc>().add(const EditorStaticTextAdded());
          },
        ),
        _lowerRowAction(
          iconData: Icons.functions,
          message: AppLocalizations.of(context)!.addVariableText,
          onPressed: () {
            context.read<EditorBloc>().add(const EditorVariableTextAdded());
          },
        ),
        _lowerRowAction(
          iconData: Icons.add_a_photo,
          message: AppLocalizations.of(context)!.addImage,
          onPressed: () {
            context.read<EditorBloc>().add(const EditorImageAdded());
          },
        ),
        _lowerRowAction(
          iconData: Icons.clear_rounded,
          message: AppLocalizations.of(context)!.clearEditor,
          onPressed: () {
            context.read<EditorBloc>().add(const EditorCleared());
          },
        ),
      ],
    );
  }

  Widget _buildDropDownMenu(context) {
    return KPopupMenuButton(
      child: Text(
        AppLocalizations.of(context)!.file,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      offsetBuilder: (buttonSize) => Offset(0.0, buttonSize.height),
      itemBuilder: (context) => [
        _buildMenuButton(
          context: context,
          text: AppLocalizations.of(context)!.save,
          onTap: () {
            // todo save editor as image
          },
        ),
        _buildMenuButton(
          context: context,
          text: AppLocalizations.of(context)!.generate,
          onTap: () {
            // todo generate images
          },
        ),
      ],
    );
  }

  KPopupMenuItem _buildMenuButton({
    required BuildContext context,
    required String text,
    required void Function() onTap,
  }) {
    final toc = Theme.of(context);
    return KPopupMenuItem(
      child: Text(
        text,
        style: toc.textTheme.button!.copyWith(color: toc.colorScheme.onSurface),
      ),
      onTap: onTap,
    );
  }

  Widget _lowerRowAction({
    required IconData iconData,
    required void Function() onPressed,
    String? message,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Material(
        color: Colors.transparent,
        child: Tooltip(
          message: message,
          textStyle: const TextStyle(fontSize: 20),
          child: InkWell(
            child: Icon(iconData),
            onTap: onPressed,
          ),
        ),
      ),
    );
  }
}
