import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/localization/languages.dart';
import 'package:photo_editor/localization/localization_cubit.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = '/settings-screen';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: _buildUpperRow(context),
          ),
          Expanded(
            flex: 95,
            child: _buildSettingsWidget(context),
          ),
        ],
      ),
    );
  }

  Container _buildSettingsWidget(BuildContext context) {
    final toc = Theme.of(context);
    return Container(
      color: toc.colorScheme.background,
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          ListTile(
            title: Text(
              AppLocalizations.of(context)!.changeLanguage,
              style: toc.textTheme.titleLarge!.copyWith(
                color: toc.colorScheme.onBackground,
              ),
              textAlign: TextAlign.center,
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    titlePadding: const EdgeInsets.all(15.0),
                    title: Column(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.changeLanguage,
                          style: toc.textTheme.headlineLarge!.copyWith(
                            color: toc.colorScheme.onBackground,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Divider(
                          color: toc.colorScheme.onBackground,
                        ),
                      ],
                    ),
                    children: [
                      ...Language.languages.map(
                        (lang) => TextButton(
                          child: Text(
                            lang.value,
                            style: toc.textTheme.headlineMedium!.copyWith(
                              color: toc.colorScheme.onBackground,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            context.read<LocalizationCubit>().setLanguage(lang);
                          },
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          Divider(
            color: toc.colorScheme.onBackground,
          ),
        ],
      ),
    );
  }

  Container _buildUpperRow(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      color: Theme.of(context).colorScheme.secondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            child: const Icon(Icons.arrow_back),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
