class Language {
  final String value;

  const Language._(this.value);

  static const Language ar = Language._('ar');
  static const Language en = Language._('en');

  static get languages => [Language.en, Language.ar];
}
