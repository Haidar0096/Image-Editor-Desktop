import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:photo_editor/service_provider/service_provider.config.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:photo_editor/services/history/history.dart';

final serviceProvider = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(serviceProvider);

@module
abstract class RegisterModule {
  Logger get logger => Logger();

  History<Editor> get editorHistory => History<Editor>(maxSize: 10);
}
