import 'package:flutter/material.dart';

get _defaultButtonStyle => ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
    );

/// The theme of the app.
get themeData => ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurpleAccent,
        background: Colors.grey,
      ),
      textTheme: Typography.whiteRedwoodCity,
      elevatedButtonTheme: ElevatedButtonThemeData(style: _defaultButtonStyle),
      textButtonTheme: TextButtonThemeData(style: _defaultButtonStyle),
      tooltipTheme: TooltipThemeData(
        waitDuration: const Duration(milliseconds: 500),
        textStyle: Typography.whiteRedwoodCity.titleMedium,
      ),
    );

const BorderRadius kBorderRadius = BorderRadius.all(Radius.circular(10));
const Duration kDialogTransitionDuration = Duration(milliseconds: 300);
