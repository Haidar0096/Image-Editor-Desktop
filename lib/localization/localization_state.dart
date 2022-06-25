part of 'localization_cubit.dart';

class LocalizationState {
  final Locale locale;

  const LocalizationState({required this.locale});

  @override
  String toString() => 'LocalizationState{locale: $locale}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalizationState && runtimeType == other.runtimeType && locale == other.locale;

  @override
  int get hashCode => locale.hashCode;
}
