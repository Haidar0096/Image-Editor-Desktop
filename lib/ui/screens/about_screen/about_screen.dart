import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = '/about-screen';

  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toc = Theme.of(context);
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Scaffold(
        backgroundColor: toc.colorScheme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    '${AppLocalizations.of(context)!.appName}\n${AppLocalizations.of(context)!.appVersion}',
                    style: toc.textTheme.titleLarge?.copyWith(
                      color: toc.colorScheme.onBackground,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    AppLocalizations.of(context)!.pressAnywhereToGoBack,
                    style: toc.textTheme.bodySmall!.copyWith(
                      color: toc.colorScheme.onBackground,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    AppLocalizations.of(context)!.love,
                    style: GoogleFonts.amiri().copyWith(
                        color: toc.colorScheme.onBackground, fontSize: 40),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
