import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toc = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.errorScreenText,
          style: toc.textTheme.headline5!.copyWith(
            color: toc.colorScheme.onBackground,
          ),
        ),
      ),
    );
  }
}
