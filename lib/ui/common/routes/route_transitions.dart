import 'package:flutter/widgets.dart';

/// Any route created using this method will be faded in when transitioned into.
/// See [PageRouteBuilder] for more description about the parameters.
Route<T> fadeInRoute<T>({
  required Widget child,
  RouteSettings? settings,
  Duration? duration,
  bool barrierDismissible = false,
  Color? barrierColor,
  String? barrierLabel,
  bool fullscreenDialog = false,
  bool maintainState = true,
  bool opaque = true,
}) =>
    PageRouteBuilder<T>(
      transitionDuration: duration ?? const Duration(milliseconds: 300),
      reverseTransitionDuration: duration ?? const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
        opacity: animation.drive(Tween(begin: 0.0, end: 1.0)),
        child: child,
      ),
      settings: settings,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      fullscreenDialog: fullscreenDialog,
      maintainState: maintainState,
      opaque: opaque,
    );
