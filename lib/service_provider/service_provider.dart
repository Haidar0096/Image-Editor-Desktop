import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:photo_editor/service_provider/service_provider.config.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:photo_editor/services/timeline/timeline.dart';

final serviceProvider = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(serviceProvider);

@module
abstract class RegisterModule {
  Logger get logger => Logger(level: kReleaseMode ? Level.warning : Level.nothing);

  Timeline<Editor> get editorTimeLine => Timeline<Editor>(maxSize: 20);
}
