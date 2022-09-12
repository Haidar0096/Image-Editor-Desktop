import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/ui/common/widgets/bar.dart';
import 'package:photo_editor/ui/common/widgets/color_picker_dialog.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc/editor_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditorScreenNavBar extends StatelessWidget {
  const EditorScreenNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, editorState) {
        return Bar(
          backgroundColor: toc.colorScheme.primary,
          mainAxis: Axis.horizontal,
          actions: [
            BarAction(
              preferredAlignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                editorState.dragPosition.fold(
                  () => '( x , y )',
                  (dragPosition) => '(${dragPosition.dx.toStringAsFixed(2)},${dragPosition.dy.toStringAsFixed(2)})',
                ),
                style: TextStyle(color: toc.colorScheme.onSecondary),
              ),
            ),
            BarAction(
              preferredAlignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tooltip(
                      message: AppLocalizations.of(context)!.backgroundColor,
                      child: InkWell(
                        child: Icon(
                          Icons.color_lens_rounded,
                          color: toc.colorScheme.onPrimary,
                        ),
                        onTap: () async {
                          await showColorPickerDialog(
                            context: context,
                            onColorChanged: (color) {
                              context.read<EditorBloc>().add(EditorEvent.changeCanvasBackgroundColor(color));
                            },
                            initialColor: editorState.canvasBackgroundColor.getOrElse(() => Colors.white),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Tooltip(
                      message: editorState.canvasBackgroundImageFile.fold(
                        () => AppLocalizations.of(context)!.backgroundImage,
                        (_) => AppLocalizations.of(context)!.removeBackgroundImage,
                      ),
                      child: InkWell(
                        child: Icon(
                          editorState.canvasBackgroundImageFile.fold(
                            () => Icons.image,
                            (_) => Icons.image_not_supported_rounded,
                          ),
                          color: toc.colorScheme.onPrimary,
                        ),
                        onTap: () async {
                          editorState.canvasBackgroundImageFile.fold(
                            () => context.read<EditorBloc>().add(const EditorEvent.changeCanvasBackgroundImage()),
                            (_) => context.read<EditorBloc>().add(const EditorEvent.removeCanvasBackgroundImage()),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
