import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/extensions/string_extension.dart';
import 'package:photo_editor/services/image_editor/image_editor.dart';
import 'package:photo_editor/ui/common/routes/route_transitions.dart';
import 'package:photo_editor/ui/common/styles/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/ui/common/widgets/info_dialog.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/screenshot_cubit/screenshot_cubit.dart';

/// Shows a dialog to choose settings for the generated image.
/// Returns true if the user has confirmed the settings and they are valid.
/// If the user cancels the dialog, returns false.
Future<bool> showGenerateImageSettingsDialog(BuildContext context) async =>
    await Navigator.of(context).push(fadeInRoute(
      child: const _GenerateImageSettingsDialog(),
      opaque: false,
    ));

class _GenerateImageSettingsDialog extends StatefulWidget {
  const _GenerateImageSettingsDialog({Key? key}) : super(key: key);

  @override
  State<_GenerateImageSettingsDialog> createState() => _GenerateImageSettingsDialogState();
}

class _GenerateImageSettingsDialogState extends State<_GenerateImageSettingsDialog> {
  late final TextEditingController _baseFileNameController;

  @override
  void initState() {
    super.initState();
    final ScreenshotState state = context.read<ScreenshotCubit>().state;
    _baseFileNameController = TextEditingController(
      text: state.baseFileName.getOrElse(() => ''),
    );
  }

  @override
  void dispose() {
    _baseFileNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData moc = MediaQuery.of(context);
    final ThemeData toc = Theme.of(context);
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(false),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Card(
              color: Colors.transparent,
              elevation: 50,
              child: ClipRRect(
                borderRadius: kBorderRadius,
                child: Container(
                  color: toc.colorScheme.background,
                  width: moc.size.width / 2,
                  height: moc.size.height / 1.6,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 8,
                        child: _buildDialogAppBar(context),
                      ),
                      Expanded(
                        flex: 92,
                        child: _buildDialogBody(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogBody(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return BlocBuilder<ScreenshotCubit, ScreenshotState>(
      builder: (context, screenshotCubitState) {
        return Column(
          children: [
            Expanded(
              flex: 88,
              child: SingleChildScrollView(
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(30),
                    1: FlexColumnWidth(70),
                  },
                  border: TableBorder.all(
                    color: toc.colorScheme.onBackground.withOpacity(0.2),
                    width: 1,
                  ),
                  children: [
                    _directoryRow(context, screenshotCubitState),
                    _fileNamingTypeRow(context, screenshotCubitState),
                    _baseFileNameRow(context, screenshotCubitState),
                    _fileExtensionRow(context, screenshotCubitState),
                    _outputImageSizeRow(context, screenshotCubitState),
                    _qualityRow(context, screenshotCubitState),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 13,
              child: _dialogActions(context),
            ),
          ],
        );
      },
    );
  }

  TableRow _qualityRow(BuildContext context, ScreenshotState screenshotCubitState) {
    final ThemeData toc = Theme.of(context);
    return TableRow(
      children: [
        _propertyLabel(
          context,
          AppLocalizations.of(context)!.quality,
          background: false,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${screenshotCubitState.outputImageQuality} %', style: toc.textTheme.subtitle1),
            ),
            Slider(
              value: screenshotCubitState.outputImageQuality.toDouble(),
              onChanged: (value) {
                context.read<ScreenshotCubit>().setOutputImageQuality(value.toInt());
              },
              min: ScreenshotCubit.minimumOutputImageResolution.toDouble(),
              max: ScreenshotCubit.maximumOutputImageResolution.toDouble(),
            ),
          ],
        ),
      ],
    );
  }

  TableRow _outputImageSizeRow(BuildContext context, ScreenshotState screenshotCubitState) {
    return TableRow(
      children: [
        _propertyLabel(
          context,
          AppLocalizations.of(context)!.size,
          background: false,
        ),
        PopupMenuButton<Size>(
          child: _propertyLabel(
            context,
            '${screenshotCubitState.outputImageSize.width.toStringAsFixed(0)} x ${screenshotCubitState.outputImageSize.height.toStringAsFixed(0)}',
            background: true,
          ),
          itemBuilder: (context) {
            return [
              for (final size in ScreenshotCubit.allowedOutputImageSizes)
                PopupMenuItem(
                  value: size,
                  child: Text(
                    '${size.width.toStringAsFixed(0)} x ${size.height.toStringAsFixed(0)}',
                  ),
                ),
            ];
          },
          onSelected: (size) => context.read<ScreenshotCubit>().setOutputImageSize(size),
        ),
      ],
    );
  }

  TableRow _fileExtensionRow(BuildContext context, ScreenshotState screenshotCubitState) {
    return TableRow(
      children: [
        _propertyLabel(
          context,
          AppLocalizations.of(context)!.fileExtension,
          background: false,
        ),
        PopupMenuButton<ImageFormat>(
          child: _propertyLabel(
            context,
            screenshotCubitState.outputImageFormat.toString().unCamelCase(capitalize: false),
            background: true,
          ),
          itemBuilder: (context) {
            return [
              for (final format in ImageFormat.values)
                PopupMenuItem(
                  value: format,
                  child: Text(
                    format.toString().unCamelCase(capitalize: false),
                  ),
                ),
            ];
          },
          onSelected: (format) => context.read<ScreenshotCubit>().setImageFileExtension(format),
        ),
      ],
    );
  }

  TableRow _baseFileNameRow(BuildContext context, ScreenshotState screenshotCubitState) {
    final ThemeData toc = Theme.of(context);
    return TableRow(
      children: [
        _propertyLabel(
          context,
          AppLocalizations.of(context)!.baseFileName,
          background: false,
        ),
        TextField(
          controller: _baseFileNameController,
          onChanged: (value) => context.read<ScreenshotCubit>().setBaseFileName(value),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: toc.colorScheme.onBackground.withOpacity(0.2),
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  TableRow _fileNamingTypeRow(BuildContext context, ScreenshotState screenshotCubitState) {
    return TableRow(
      children: [
        _propertyLabel(
          context,
          AppLocalizations.of(context)!.fileNamingType,
          background: false,
        ),
        PopupMenuButton<FileNamingType>(
          child: _propertyLabel(
            context,
            screenshotCubitState.fileNamingType.toString().unCamelCase(),
            background: true,
          ),
          itemBuilder: (context) {
            return [
              for (final fileNamingType in FileNamingType.values)
                PopupMenuItem(
                  value: fileNamingType,
                  child: Text(
                    fileNamingType.toString().unCamelCase(),
                  ),
                ),
            ];
          },
          onSelected: (fileNamingType) => context.read<ScreenshotCubit>().setFileNamingType(fileNamingType),
        ),
      ],
    );
  }

  Row _dialogActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () async => Navigator.of(context).pop(false),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () async {
              final validationResult = context.read<ScreenshotCubit>().validateGenerateImageSettings();
              if (validationResult != GenerateImageSettingsValidationResult.valid) {
                showInfoDialog(context, validationResult.getMessage(context));
                return;
              }
              Navigator.of(context).pop(true);
            },
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ),
      ],
    );
  }

  TableRow _directoryRow(BuildContext context, ScreenshotState screenshotCubitState) {
    return TableRow(
      children: [
        _propertyLabel(
          context,
          AppLocalizations.of(context)!.directory,
          background: false,
        ),
        InkWell(
          child: _propertyLabel(
            context,
            screenshotCubitState.outputImageDirectory.fold(
              () => AppLocalizations.of(context)!.noDirectorySelected,
              (dir) => dir.path,
            ),
            background: true,
          ),
          onTap: () => context.read<ScreenshotCubit>().setOutputImageDirectory(),
        ),
      ],
    );
  }

  Widget _propertyLabel(BuildContext context, String text, {required bool background}) {
    final ThemeData toc = Theme.of(context);
    return Container(
      decoration: background
          ? BoxDecoration(
              color: toc.colorScheme.onBackground.withOpacity(0.1),
            )
          : null,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          text,
          style: toc.textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Container _buildDialogAppBar(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return Container(
      width: double.infinity,
      color: toc.colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          AppLocalizations.of(context)!.generateImageSettings,
          style: toc.textTheme.subtitle2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
