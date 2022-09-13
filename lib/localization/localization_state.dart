part of 'localization_cubit.dart';

class LocalizationState {
  final Language language;

  const LocalizationState({required this.language});

  @override
  String toString() => 'LocalizationState{language: $language}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalizationState &&
          runtimeType == other.runtimeType &&
          language == other.language;

  @override
  int get hashCode => language.hashCode;
}
