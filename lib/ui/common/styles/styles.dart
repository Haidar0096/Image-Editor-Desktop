import 'package:flutter/material.dart';

get _defaultButtonStyle => ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
    );

/// The theme of the app.
get themeData => ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurpleAccent,
        background: Colors.white,
      ),
      textTheme: Typography.whiteRedwoodCity.copyWith(
        subtitle1: Typography.whiteRedwoodCity.subtitle1!.copyWith(
          color: Colors.black,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(style: _defaultButtonStyle),
      textButtonTheme: TextButtonThemeData(style: _defaultButtonStyle),
      tooltipTheme: TooltipThemeData(
        waitDuration: const Duration(milliseconds: 500),
        textStyle: Typography.whiteRedwoodCity.titleMedium,
      ),
      scrollbarTheme: ScrollbarThemeData(
        trackVisibility: MaterialStateProperty.all(true),
      ),
      popupMenuTheme: PopupMenuThemeData(
        textStyle: Typography.whiteRedwoodCity.titleMedium!.copyWith(color: Colors.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );

const BorderRadius kBorderRadius = BorderRadius.all(Radius.circular(10));
const Duration kDialogTransitionDuration = Duration(milliseconds: 300);
const Duration kScrollTransitionDuration = Duration(milliseconds: 50);
const Size kDialogSize = Size(300, 170);
