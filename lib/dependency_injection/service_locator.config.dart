// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i8;

import '../services/editor/editor.dart' as _i7;
import '../services/editor/element_id_generator.dart' as _i3;
import '../services/file_picker/file_picker.dart' as _i4;
import '../services/file_picker/file_picker_impl.dart' as _i5;
import '../services/history/history.dart' as _i6;
import '../services/screenshot_service/screenshot_service.dart' as _i9;
import '../ui/screens/editor_screen/bloc/editor_bloc.dart' as _i10;
import '../ui/screens/editor_screen/bloc/screenshot_cubit.dart' as _i11;
import 'service_locator.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.ElementIdGenerator>(() => _i3.ElementIdGeneratorImpl());
  gh.factory<_i4.FilePicker>(() => _i5.FilePickerImpl());
  gh.factory<_i6.History<_i7.Editor>>(() => registerModule.editorHistory);
  gh.factory<_i8.Logger>(() => registerModule.logger);
  gh.factory<_i9.ScreenshotService>(() => _i9.ScreenshotServiceImpl());
  gh.factory<_i10.EditorBloc>(() => _i10.EditorBloc(
      get<_i4.FilePicker>(),
      get<_i8.Logger>(),
      get<_i3.ElementIdGenerator>(),
      get<_i6.History<_i7.Editor>>()));
  gh.factory<_i11.ScreenshotCubit>(() => _i11.ScreenshotCubit(
      get<_i4.FilePicker>(), get<_i9.ScreenshotService>(), get<_i8.Logger>()));
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
