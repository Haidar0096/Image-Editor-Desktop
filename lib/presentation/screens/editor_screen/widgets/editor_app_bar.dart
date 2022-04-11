import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/presentation/common/extensions/text_extension.dart';

//todo move redo and undo to lower bar
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
            child: _buildLowerRow(),
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

  Row _buildUpperRow(BuildContext context, ThemeData toc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
          child: _dropDownMenu(
            context: context,
            title: AppLocalizations.of(context)!.file,
            items: [
              _menuButton(
                context: context,
                text: AppLocalizations.of(context)!.save,
                onTap: () {
                  // todo save editor as image
                },
              ),
              _menuButton(
                context: context,
                text: AppLocalizations.of(context)!.generate,
                onTap: () {
                  // todo generate images
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
          child: TextButton(
            child: Text(
              AppLocalizations.of(context)!.about,
              style: toc.textTheme.bodyMedium,
            ),
            onPressed: () {
              // todo show "about" dialog
            },
          ),
        ),
      ],
    );
  }

  Row _buildLowerRow() {
    return Row(
      children: [
        _action(
          iconData: Icons.undo,
          onPressed: () {
            //todo undo
          },
        ),
        _action(
          iconData: Icons.redo,
          onPressed: () {
            //todo redo
          },
        ),
        _action(
          iconData: Icons.text_fields,
          onPressed: () {
            //todo add text
          },
        ),
        _action(
          iconData: Icons.add_a_photo,
          onPressed: () {
            //todo add image
          },
        ),
      ],
    );
  }

  Widget _dropDownMenu({
    required BuildContext context,
    required String title,
    required List<PopupMenuItem> items,
  }) {
    final text = Text(
      title,
      style: Theme.of(context).textTheme.bodyMedium,
    );
    final textSize = text.getSize();
    return PopupMenuButton(
      child: text,
      itemBuilder: (context) => items,
      offset: Offset(0.0, textSize.height),
    );
  }

  PopupMenuItem _menuButton({
    required BuildContext context,
    required String text,
    required void Function() onTap,
  }) {
    final toc = Theme.of(context);
    return PopupMenuItem(
      child: Text(
        text,
        style: toc.textTheme.button!.copyWith(color: toc.colorScheme.onSurface),
      ),
      onTap: onTap,
    );
  }

  Widget _action({
    required IconData iconData,
    required void Function() onPressed,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: InkWell(
          child: Icon(iconData),
          onTap: onPressed,
        ),
      );
}
