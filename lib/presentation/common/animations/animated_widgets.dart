import 'package:flutter/material.dart';

/// Any widget wrapped inside this widget will be faded in when displayed.
Widget fadeInWidget({
  required Widget child,
  Duration duration = const Duration(seconds: 1),
}) =>
    TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.0, end: 1.0),
      duration: duration,
      builder: (_, opacity, widget) => Opacity(
        opacity: opacity,
        child: child,
      ),
      child: child,
    );
