import 'package:flutter/material.dart';
import 'package:photo_editor/ui/common/styles/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// A widget with optional text, optional cancel button, and a circular progress indicator.
class LoadingWidget extends StatelessWidget {
  /// Callback that when provided, will cause a "Cancel" button to be displayed.
  /// And this callback will be invoked when the button is pressed.
  final void Function()? onDismiss;

  /// The child to display in the loading widget.
  final Widget child;

  const LoadingWidget({Key? key, required this.child, this.onDismiss}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return Center(
      child: Card(
        color: toc.colorScheme.background,
        elevation: 100,
        child: ClipRRect(
          borderRadius: kBorderRadius,
          child: SizedBox(
            width: kDialogSize.width,
            height: kDialogSize.height * 1.3,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: child,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(),
                      ),
                    ],
                  ),
                ),
                if (onDismiss != null)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: onDismiss,
                        child: Text(AppLocalizations.of(context)!.cancel),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
