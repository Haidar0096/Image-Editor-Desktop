import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'language.dart';

part 'localization_state.dart';

///Manages the locale of the app.
class LocalizationCubit extends HydratedCubit<LocalizationState> {
  LocalizationCubit()
      : super(const LocalizationState(language: Language.english));

  void setLanguage(Language language) =>
      emit(LocalizationState(language: language));

  @override
  LocalizationState? fromJson(Map<String, dynamic> json) => LocalizationState(
        language: Language.values
            .where((lang) => lang.languageCode == json['language_code'])
            .first,
      );

  @override
  Map<String, dynamic>? toJson(LocalizationState state) =>
      {'language_code': state.language.languageCode};
}
