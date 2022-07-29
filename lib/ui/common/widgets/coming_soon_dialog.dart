import 'package:flutter/material.dart';
import 'package:photo_editor/ui/common/routes/route_transitions.dart';
import 'package:photo_editor/ui/common/styles/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void showComingSoonDialog(BuildContext context) => Navigator.of(context).push(
      fadeInRoute(
        child: const _ComingSoonDialog(),
        opaque: false,
        duration: kDialogTransitionDuration,
      ),
    );

class _ComingSoonDialog extends StatelessWidget {
  const _ComingSoonDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData moc = MediaQuery.of(context);

    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        Align(
          alignment: Alignment.center,
          child: Material(
            color: Colors.transparent,
            child: Card(
              color: Colors.transparent,
              elevation: 100,
              child: ClipRRect(
                borderRadius: kBorderRadius,
                child: SizedBox(
                  width: moc.size.width / 3,
                  height: moc.size.height / 3,
                  child: Column(
                    children: const [
                      Expanded(flex: 21, child: _ComingSoonDialogAppBar()),
                      Expanded(flex: 79, child: _ComingSoonDialogBody()),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ComingSoonDialogAppBar extends StatelessWidget {
  const _ComingSoonDialogAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return SizedBox.expand(
      child: Container(
        alignment: Alignment.center,
        color: toc.colorScheme.secondary,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            AppLocalizations.of(context)!.comingSoon,
            style: toc.textTheme.headline6,
          ),
        ),
      ),
    );
  }
}

class _ComingSoonDialogBody extends StatelessWidget {
  const _ComingSoonDialogBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return SizedBox.expand(
      child: Container(
        alignment: Alignment.center,
        color: toc.colorScheme.background,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  AppLocalizations.of(context)!.featureComingSoon,
                  style: toc.textTheme.headline5,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    AppLocalizations.of(context)!.ok,
                    style: toc.textTheme.headline6,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
