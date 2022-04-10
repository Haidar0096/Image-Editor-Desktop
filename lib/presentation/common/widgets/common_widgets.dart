import 'package:flutter/material.dart';

/// Any widget wrapped with this widget will have rounded corners.
Widget roundedWidget({required Widget child, double radius = 40}) => ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: child,
    );

