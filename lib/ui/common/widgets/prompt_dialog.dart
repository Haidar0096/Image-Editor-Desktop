import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/ui/common/styles/styles.dart';

/// Shows a dialog with a prompt and two actions: confirm and cancel.
Future<void> showPromptDialog({
  required BuildContext context,

  /// The title of the dialog.
  required String title,

  /// The text to be shown on the confirm button.
  String? confirmButtonText,

  /// The text to be shown on the cancel button.
  String? cancelButtonText,

  /// The callback to be called when the confirm button is tapped.
  void Function()? onConfirm,

  /// The callback to be called when the cancel button is tapped.
  void Function()? onCancel,
}) async =>
    showDialog(
      context: context,
      builder: (dialogContext) {
        final ThemeData toc = Theme.of(dialogContext);
        return Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.transparent,
          child: Stack(
            children: [
              Positioned.fill(
                child: GestureDetector(
                  onTap: () {
                    onCancel?.call();
                    Navigator.of(dialogContext).pop();
                  },
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: kDialogSize.width,
                  height: kDialogSize.height,
                  child: Card(
                    elevation: 100,
                    color: toc.colorScheme.background,
                    child: ClipRRect(
                      borderRadius: kBorderRadius,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                title,
                                style: toc.textTheme.subtitle1,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      onCancel?.call();
                                      Navigator.of(dialogContext).pop();
                                    },
                                    child: Text(
                                      cancelButtonText ?? AppLocalizations.of(context)!.cancel,
                                      style: toc.textTheme.subtitle2,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      onConfirm?.call();
                                      Navigator.of(dialogContext).pop();
                                    },
                                    child: Text(
                                      confirmButtonText ?? AppLocalizations.of(context)!.ok,
                                      style: toc.textTheme.subtitle2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
      },
    );
