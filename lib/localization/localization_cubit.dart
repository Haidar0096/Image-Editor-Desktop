import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'dart:ui';

import 'languages.dart';

part 'localization_state.dart';

///Tracks and sets the locale of the app
class LocalizationCubit extends HydratedCubit<LocalizationState> {
  LocalizationCubit()
      : super(LocalizationState(
            locale: Locale.fromSubtags(languageCode: Language.en.value)));

  void setLanguage(Language language) {
    emit(LocalizationState(
        locale: Locale.fromSubtags(languageCode: language.value)));
  }

  Locale get locale => state.locale;

  @override
  LocalizationState? fromJson(Map<String, dynamic> json) => LocalizationState(
        locale: Locale.fromSubtags(languageCode: json['language_code']),
      );

  @override
  Map<String, dynamic>? toJson(LocalizationState state) => {
        'language_code': state.locale.languageCode,
      };
}
