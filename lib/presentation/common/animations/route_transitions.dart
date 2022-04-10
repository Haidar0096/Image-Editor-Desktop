import 'package:flutter/material.dart';

/// Any route created using this method will be faded in when transitioned into.
Route fadeInRoute({required Widget child, RouteSettings? settings}) =>
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
        opacity: animation.drive(Tween(begin: 0.0, end: 1.0)),
        child: child,
      ),
      settings: settings,
    );
