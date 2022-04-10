import 'package:flutter/material.dart';

get _defaultButtonStyle => ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.all(23)),
      shape: MaterialStateProperty.all(const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(23)))),
    );

/// The theme of the app.
get themeData => ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal).copyWith(
        surface: Colors.teal,
      ),
      textTheme: Typography.whiteRedwoodCity,
      elevatedButtonTheme: ElevatedButtonThemeData(style: _defaultButtonStyle),
      textButtonTheme: TextButtonThemeData(style: _defaultButtonStyle),
    );
