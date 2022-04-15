import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class Language {
  final String value;

  const Language._(this.value);

  static const Language ar = Language._('ar');
  static const Language en = Language._('en');

  static get languages => IList(const [Language.en, Language.ar]);
}
