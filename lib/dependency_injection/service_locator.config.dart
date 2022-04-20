// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;

import '../services/editor/element_id_generator.dart' as _i3;
import '../services/file_picker/file_picker.dart' as _i4;
import '../services/file_picker/file_picker_impl.dart' as _i5;
import '../ui/screens/editor_screen/bloc/editor_bloc.dart' as _i7;
import 'service_locator.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.ElementIdGenerator>(() => _i3.ElementIdGeneratorImpl());
  gh.factory<_i4.FilePicker>(() => _i5.FilePickerImpl());
  gh.factory<_i6.Logger>(() => registerModule.logger);
  gh.factory<_i7.EditorBloc>(() => _i7.EditorBloc(
      get<_i4.FilePicker>(), get<_i6.Logger>(), get<_i3.ElementIdGenerator>()));
  return get;
}

class _$RegisterModule extends _i8.RegisterModule {}
