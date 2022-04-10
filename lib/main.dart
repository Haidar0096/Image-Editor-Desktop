import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/localization/localization_cubit.dart';
import 'package:photo_editor/presentation/common/animations/route_transitions.dart'
    as route_transitions;
import 'package:photo_editor/presentation/common/styles/styles.dart' as styles;
import 'package:photo_editor/presentation/screens/error_screen/error_screen.dart';
import 'package:photo_editor/presentation/screens/editor_screen/editor_screen.dart';

void main() {
  runApp(const PhotoEditorApp());
}

class PhotoEditorApp extends StatelessWidget {
  const PhotoEditorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => LocalizationCubit(),
        child: Builder(
          builder: (context) =>
              BlocBuilder<LocalizationCubit, LocalizationState>(
            builder: (context, state) => MaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: state.locale,
              theme: styles.themeData,
              onGenerateRoute: _onGenerateRoute,
            ),
          ),
        ),
      );

  Route? _onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
      case EditorScreen.routeName:
        return route_transitions.fadeInRoute(
          child: const EditorScreen(),
          settings: routeSettings,
        );
    }
    return route_transitions.fadeInRoute(
      child: const ErrorScreen(),
      settings: routeSettings,
    );
  }
}
