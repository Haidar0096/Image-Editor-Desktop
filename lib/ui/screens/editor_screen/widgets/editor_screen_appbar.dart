// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/ui/common/widgets/prompt_dialog.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:photo_editor/ui/common/widgets/bar.dart';
import 'package:photo_editor/ui/common/widgets/info_dialog.dart';
import 'package:photo_editor/ui/screens/about_screen/about_screen.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc/editor_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/screenshot_cubit/screenshot_cubit.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/settings_dialog.dart';

import 'generate_image_settings_dialog.dart';

class EditorScreenAppBar extends StatelessWidget {
  const EditorScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return Bar(
      backgroundColor: toc.colorScheme.primary,
      mainAxis: Axis.horizontal,
      actions: [
        _buildFileMenu(context),
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

Widget _buildFileMenu(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: PopupMenuButton(
      child: Text(
        AppLocalizations.of(context)!.file,
        style: Theme.of(context).textTheme.subtitle2,
      ),
      itemBuilder: (ctx) => [
        PopupMenuItem(
          child: Text(AppLocalizations.of(ctx)!.generate),
          onTap: () => Future.delayed(
            Duration.zero,
            () async {
              final bool generateImageSettingsValid =
                  await showGenerateImageSettingsDialog(context);
              if (generateImageSettingsValid) {
                final editorElements =
                    context.read<EditorBloc>().state.editor.elements;
                final canvasSize = (context
                        .read<EditorBloc>()
                        .state
                        .canvasKey
                        .toNullable()!
                        .currentContext!
                        .findRenderObject() as RenderBox)
                    .size;
                final result =
                    await context.read<ScreenshotCubit>().captureWidget(
                          elements: editorElements.toList(),
                          context: context,
                          canvasSize: canvasSize,
                          canvasBackgroundColor: context
                              .read<EditorBloc>()
                              .state
                              .canvasBackgroundColor,
                          canvasBackgroundImageFile: context
                              .read<EditorBloc>()
                              .state
                              .canvasBackgroundImageFile,
                        );
                result.fold(
                  (message) => showInfoDialog(context, message),
                  (_) async => showPromptDialog(
                    context: context,
                    title: AppLocalizations.of(context)!
                        .openGeneratedImagesFolderPrompt,
                    onConfirm: () async {
                      final Uri savedImagesUri = Uri.parse(
                          'file:${context.read<ScreenshotCubit>().state.outputImageDirectory.toNullable()!.path}');
                      if (await url_launcher.canLaunchUrl(savedImagesUri)) {
                        await url_launcher.launchUrl(savedImagesUri);
                      }
                    },
                    confirmButtonText: AppLocalizations.of(context)!.yes,
                    cancelButtonText: AppLocalizations.of(context)!.no,
                  ),
                );
              }
            },
          ),
        )
      ],
    ),
  );
}
