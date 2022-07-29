import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';

class EditorScreenLeftPanel extends StatelessWidget {
  const EditorScreenLeftPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    final MediaQueryData moc = MediaQuery.of(context);
    return Container(
      color: toc.colorScheme.primary,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tooltip(
              message: AppLocalizations.of(context)!.addImage,
              child: InkWell(
                child: Icon(
                  Icons.add_a_photo,
                  color: toc.colorScheme.onPrimary,
                ),
                onTap: () {
                  context.read<EditorBloc>().add(const EditorEvent.addImage());
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tooltip(
              message: AppLocalizations.of(context)!.addStaticText,
              child: InkWell(
                child: Icon(
                  Icons.text_fields_outlined,
                  color: toc.colorScheme.onPrimary,
                ),
                onTap: () {
                  context.read<EditorBloc>().add(
                        EditorEvent.addStaticText(
                          initialText: AppLocalizations.of(context)!.typeText,
                          textDirection: Directionality.of(context),
                          minWidth: 0.0,
                          maxWidth: moc.size.width,
                        ),
                      );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tooltip(
              message: AppLocalizations.of(context)!.addVariableText,
              child: InkWell(
                child: Icon(
                  Icons.functions_outlined,
                  color: toc.colorScheme.onPrimary,
                ),
                onTap: () {
                  context.read<EditorBloc>().add(
                        EditorEvent.addVariableText(
                          initialText: AppLocalizations.of(context)!.generatedTextAppearsHere,
                          textDirection: Directionality.of(context),
                          minWidth: 0.0,
                          maxWidth: moc.size.width,
                        ),
                      );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tooltip(
              message: AppLocalizations.of(context)!.bringToFront,
              child: InkWell(
                child: Icon(
                  Icons.flip_to_front,
                  color: toc.colorScheme.onPrimary,
                ),
                onTap: () {
                  context.read<EditorBloc>().add(const EditorEvent.bringSelectedElementToFront());
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tooltip(
              message: AppLocalizations.of(context)!.removeElement,
              child: InkWell(
                child: Icon(
                  Icons.delete_forever,
                  color: toc.colorScheme.onPrimary,
                ),
                onTap: () {
                  context.read<EditorBloc>().add(const EditorEvent.removeSelectedElement());
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tooltip(
              message: AppLocalizations.of(context)!.clearEditor,
              child: InkWell(
                child: Icon(
                  Icons.clear,
                  color: toc.colorScheme.onPrimary,
                ),
                onTap: () {
                  context.read<EditorBloc>().add(const EditorEvent.clearEditor());
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tooltip(
              message: AppLocalizations.of(context)!.undo,
              child: InkWell(
                child: Icon(
                  Icons.undo,
                  color: toc.colorScheme.onPrimary,
                ),
                onTap: () {
                  context.read<EditorBloc>().add(const EditorEvent.undo());
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tooltip(
              message: AppLocalizations.of(context)!.redo,
              child: InkWell(
                child: Icon(
                  Icons.redo,
                  color: toc.colorScheme.onPrimary,
                ),
                onTap: () {
                  context.read<EditorBloc>().add(const EditorEvent.redo());
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
