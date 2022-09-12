import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:photo_editor/localization/language.dart';
import 'package:photo_editor/localization/localization_cubit.dart';
import 'package:photo_editor/service_provider/service_provider.dart' as service_provider;
import 'package:photo_editor/ui/common/routes/route_transitions.dart' as route_transitions;
import 'package:photo_editor/ui/common/styles/styles.dart' as styles;
import 'package:photo_editor/ui/screens/about_screen/about_screen.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc/editor_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/screenshot_cubit/screenshot_cubit.dart';
import 'package:photo_editor/ui/screens/error_screen/error_screen.dart';
import 'package:photo_editor/ui/screens/editor_screen/editor_screen.dart';
import 'package:window_size/window_size.dart' as window_size;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // set up dependency injection
  service_provider.configureDependencies();

  // limit the window size boundaries on desktops
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    window_size.setWindowMinSize(const Size(1000, 700));
  }

  // load language settings
  final HydratedStorage storage = await HydratedStorage.build(storageDirectory: await getApplicationSupportDirectory());

  // uncomment the following line to prevent http fetching of google fonts
  // GoogleFonts.config.allowRuntimeFetching = false;

  HydratedBlocOverrides.runZoned(
    () => runApp(const PhotoEditorApp()),
    storage: storage,
  );
}

class PhotoEditorApp extends StatelessWidget {
  const PhotoEditorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => service_provider.serviceProvider.get<EditorBloc>()),
          BlocProvider(create: (context) => service_provider.serviceProvider.get<ScreenshotCubit>()),
          BlocProvider(create: (context) => LocalizationCubit()),
        ],
        child: Builder(
          builder: (context) => BlocBuilder<LocalizationCubit, LocalizationState>(
            builder: (context, localizationState) => MaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: Locale.fromSubtags(languageCode: localizationState.language.languageCode),
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
      case AboutScreen.routeName:
        return route_transitions.fadeInRoute(
          child: const AboutScreen(),
          settings: routeSettings,
        );
      default:
        return route_transitions.fadeInRoute(
          child: const ErrorScreen(),
          settings: routeSettings,
        );
    }
  }
}
