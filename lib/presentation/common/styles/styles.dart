import 'package:flutter/material.dart';

get _defaultButtonStyle => ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
    );

/// The theme of the app.
get themeData => ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey).copyWith(
        background: Colors.grey.shade500,
      ),
      textTheme: Typography.whiteRedwoodCity,
      elevatedButtonTheme: ElevatedButtonThemeData(style: _defaultButtonStyle),
      textButtonTheme: TextButtonThemeData(style: _defaultButtonStyle),
    );
