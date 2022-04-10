import 'package:bloc/bloc.dart';
import 'dart:ui' as ui;

import 'languages.dart';

part 'localization_state.dart';

///Tracks and sets the locale of the app
class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit()
      : super(LocalizationState(
            locale: ui.Locale.fromSubtags(languageCode: Language.en.value)));

  void setLanguage(Language language) {
    emit(LocalizationState(
        locale: ui.Locale.fromSubtags(languageCode: language.value)));
  }

  ui.Locale get locale => state.locale;
}
