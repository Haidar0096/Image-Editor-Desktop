import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/localization/language.dart';
import 'package:photo_editor/localization/localization_cubit.dart';
import 'package:photo_editor/ui/common/routes/route_transitions.dart';
import 'package:photo_editor/ui/common/styles/styles.dart';

/// Shows the settings dialog.
void showSettingsDialog(BuildContext context) => Navigator.of(context).push(
      fadeInRoute(
          child: const _SettingsDialog(),
          opaque: false,
          duration: kDialogTransitionDuration),
    );

class _SettingsDialog extends StatelessWidget {
  const _SettingsDialog();

  @override
  Widget build(BuildContext context) {
    final MediaQueryData moc = MediaQuery.of(context);

    return Stack(
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).pop(),
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
                  width: moc.size.width / 1.8,
                  height: moc.size.height / 1.5,
                  child: Column(
                    children: const [
                      Expanded(flex: 10, child: _SettingsDialogAppBar()),
                      Expanded(flex: 90, child: _SettingsDialogBody()),
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

class _SettingsDialogAppBar extends StatelessWidget {
  const _SettingsDialogAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return Container(
      color: toc.colorScheme.secondary,
      child: Stack(
        children: [
          Align(
            alignment: Directionality.of(context).name == 'ltr'
                ? Alignment.topLeft
                : Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Icon(
                  Icons.arrow_back,
                  color: toc.colorScheme.onSecondary,
                ),
                onTap: () => Navigator.of(context).pop(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppLocalizations.of(context)!.settings,
                style: toc.textTheme.titleMedium!.copyWith(
                  color: toc.colorScheme.onSecondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SettingsDialogBody extends StatefulWidget {
  const _SettingsDialogBody({Key? key}) : super(key: key);

  @override
  State<_SettingsDialogBody> createState() => _SettingsDialogBodyState();
}

class _SettingsDialogBodyState extends State<_SettingsDialogBody> {
  late Widget _selectedWidget;

  @override
  void initState() {
    super.initState();
    _selectedWidget = const _ChangeLanguageWidget();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return Container(
      color: toc.colorScheme.background,
      child: Row(
        children: [
          Container(
            color: toc.colorScheme.primary,
            width: 180,
            child: ListView(
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.language,
                            color: toc.colorScheme.onPrimary,
                            size: 20,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              AppLocalizations.of(context)!.changeLanguage,
                              style: toc.textTheme.titleSmall,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      if (_selectedWidget is! _ChangeLanguageWidget) {
                        setState(() {
                          _selectedWidget = const _ChangeLanguageWidget();
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: _selectedWidget),
        ],
      ),
    );
  }
}

class _ChangeLanguageWidget extends StatelessWidget {
  const _ChangeLanguageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: PopupMenuButton(
              itemBuilder: (context) {
                return <PopupMenuItem>[
                  ...Language.values
                      .map(
                        (lang) => PopupMenuItem(
                          child: Center(
                              child:
                                  Text(lang.name, textAlign: TextAlign.center)),
                          onTap: () {
                            context.read<LocalizationCubit>().setLanguage(lang);
                          },
                        ),
                      )
                      .toList(),
                ];
              },
              position: PopupMenuPosition.under,
              child: Tooltip(
                message: AppLocalizations.of(context)!.changeLanguage,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: kBorderRadius * 0.8,
                    child: Container(
                      decoration: BoxDecoration(color: toc.colorScheme.primary),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            BlocBuilder<LocalizationCubit, LocalizationState>(
                          builder: (context, localizationState) {
                            return Text(
                              localizationState.language.name,
                              style: toc.textTheme.subtitle2,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
