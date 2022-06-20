/// Holds the supported languages.
enum Language { english, arabic }

extension LanguageExtension on Language {
  String get languageCode {
    switch (this) {
      case Language.english:
        return 'en';
      case Language.arabic:
        return 'ar';
    }
  }
}
