import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LeftPanel extends StatelessWidget {
  const LeftPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toc = Theme.of(context);
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, state) {
        return Container(
          color: toc.colorScheme.secondary,
          child: state.selectedElementId.fold(
            () {
              // there is no selected element

              return null;
            },
            (selectedElementId) {
              // there is selected element

              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Tooltip(
                      message: AppLocalizations.of(context)!.removeElement,
                      textStyle: toc.textTheme.headline6,
                      child: InkWell(
                        child: Icon(
                          Icons.delete,
                          color: toc.colorScheme.onSecondary,
                        ),
                        onTap: () {
                          context.read<EditorBloc>().add(
                                RemoveElementEditorEvent(
                                  elementId: selectedElementId,
                                ),
                              );
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
