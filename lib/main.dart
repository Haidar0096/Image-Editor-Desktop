import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:photo_editor/dependency_injection/service_locator.dart'
    as service_locator;
import 'package:photo_editor/localization/localization_cubit.dart';
import 'package:photo_editor/ui/common/animations/route_transitions.dart'
    as route_transitions;
import 'package:photo_editor/ui/common/styles/styles.dart' as styles;
import 'package:photo_editor/ui/screens/about_screen/about_screen.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/screenshot_cubit.dart';
import 'package:photo_editor/ui/screens/error_screen/error_screen.dart';
import 'package:photo_editor/ui/screens/editor_screen/editor_screen.dart';
import 'package:photo_editor/ui/screens/settings_screen/settings_screen.dart';
import 'package:window_size/window_size.dart' as window_size;

import 'dependency_injection/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  service_locator.configureDependencies();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    window_size.setWindowMinSize(const Size(1000, 700));
  }
  final storage = await HydratedStorage.build(
      storageDirectory: await getApplicationSupportDirectory());
  HydratedBlocOverrides.runZoned(
    () => runApp(const PhotoEditorApp()),
    storage: storage,
  );
}

class PhotoEditorApp extends StatelessWidget {
  const PhotoEditorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => LocalizationCubit(),
        child: Builder(
          builder: (context) =>
              BlocBuilder<LocalizationCubit, LocalizationState>(
            builder: (context, state) => MultiBlocProvider(
              providers: [
                BlocProvider(
                    create: (context) => serviceLocator.get<EditorBloc>()),
                BlocProvider(
                    create: (context) => serviceLocator.get<ScreenshotCubit>())
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                locale: state.locale,
                theme: styles.themeData,
                onGenerateRoute: _onGenerateRoute,
              ),
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
      case SettingsScreen.routeName:
        return route_transitions.fadeInRoute(
          child: const SettingsScreen(),
          settings: routeSettings,
        );
      case AboutScreen.routeName:
        return route_transitions.fadeInRoute(
          child: const AboutScreen(),
          settings: routeSettings,
        );
    }
    return route_transitions.fadeInRoute(
      child: const ErrorScreen(),
      settings: routeSettings,
    );
  }
}
