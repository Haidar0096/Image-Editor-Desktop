import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/ui/common/styles/styles.dart';

/// Shows a dialog with info text.
Future<void> showInfoDialog(
  BuildContext context,

  /// The text to show in the dialog.
  String message,
) async {
  await showDialog(
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
                onTap: () => Navigator.of(dialogContext).pop(),
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
                              message,
                              style: toc.textTheme.subtitle1,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => Navigator.of(dialogContext).pop(),
                              child: Text(
                                AppLocalizations.of(context)!.ok,
                                style: toc.textTheme.subtitle2,
                              ),
                            ),
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
}
