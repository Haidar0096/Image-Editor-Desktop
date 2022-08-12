import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class FontsService {
  static List<String> getAvailableFontsNames() {
    return GoogleFonts.asMap().keys.toList();
  }

  static TextStyle getFont(String fontFamily, {TextStyle? textStyle}) =>
      GoogleFonts.getFont(fontFamily, textStyle: textStyle);
}
