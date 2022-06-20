import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:photo_editor/service_provider/service_provider.config.dart';

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
}
