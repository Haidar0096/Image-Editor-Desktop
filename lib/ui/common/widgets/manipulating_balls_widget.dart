import 'package:flutter/material.dart';

typedef OnResizeStart = void Function(DragStartDetails details);
typedef OnResizeUpdate = void Function(DragUpdateDetails details);
typedef OnResizeEnd = void Function(DragEndDetails details);

/// A widget that places manipulating balls on top of its child. Each ball can be configured with a custom handler.
class ManipulatingBallsWidget extends StatelessWidget {
  /// Called when the user starts dragging the ball.
  final OnResizeStart? onResizeStart;

  /// Called when the resize on the center-right direction is updated.
  final OnResizeUpdate? onResizeCenterRight;

  /// Called when the resize on the center-left direction is updated.
  final OnResizeUpdate? onResizeCenterLeft;

  /// Called when the resize on the top-center direction is updated.
  final OnResizeUpdate? onResizeTopCenter;

  /// Called when the resize on the bottom-center direction is updated.
  final OnResizeUpdate? onResizeBottomCenter;

  /// Called when the resize on the top-left direction is updated.
  final OnResizeUpdate? onResizeTopLeft;

  /// Called when the resize on the top-right direction is updated.
  final OnResizeUpdate? onResizeTopRight;

  /// Called when the resize on the bottom-left direction is updated.
  final OnResizeUpdate? onResizeBottomLeft;

  /// Called when the resize on the bottom-right direction is updated.
  final OnResizeUpdate? onResizeBottomRight;

  /// Called when the user stops dragging the ball.
  final OnResizeEnd? onResizeEnd;

  /// The diameter of the manipulating ball.
  final double ballDiameter;

  /// The child widget around which the balls will appear.
  final Widget child;

  const ManipulatingBallsWidget({
    Key? key,
    required this.child,
    this.onResizeStart,
    this.onResizeTopLeft,
    this.onResizeTopCenter,
    this.onResizeTopRight,
    this.onResizeCenterRight,
    this.onResizeBottomRight,
    this.onResizeBottomCenter,
    this.onResizeBottomLeft,
    this.onResizeCenterLeft,
    this.onResizeEnd,
    this.ballDiameter = 40.0,
  })  : assert(ballDiameter >= 0, 'ballDiameter must be greater than or equal to 0.'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: child,
        ),
        Positioned.fill(
          child: ManipulatingBall(
            ballDiameter: ballDiameter,
            resizeDirection: ResizeDirection.topLeft,
            onDragStart: onResizeStart,
            onDragUpdate: onResizeTopLeft,
            onDragEnd: (details) => onResizeEnd,
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.topCenter,
            ballDiameter: ballDiameter,
            onDragStart: onResizeStart,
            onDragUpdate: onResizeTopCenter,
            onDragEnd: (details) => onResizeEnd,
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.topRight,
            ballDiameter: ballDiameter,
            onDragStart: onResizeStart,
            onDragUpdate: onResizeTopRight,
            onDragEnd: (details) => onResizeEnd,
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.centerRight,
            ballDiameter: ballDiameter,
            onDragStart: onResizeStart,
            onDragUpdate: onResizeCenterRight,
            onDragEnd: (details) => onResizeEnd,
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.bottomRight,
            ballDiameter: ballDiameter,
            onDragStart: onResizeStart,
            onDragUpdate: onResizeBottomRight,
            onDragEnd: (details) => onResizeEnd,
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.bottomCenter,
            ballDiameter: ballDiameter,
            onDragStart: onResizeStart,
            onDragUpdate: onResizeBottomCenter,
            onDragEnd: (details) => onResizeEnd,
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.bottomLeft,
            ballDiameter: ballDiameter,
            onDragStart: onResizeStart,
            onDragUpdate: onResizeBottomLeft,
            onDragEnd: (details) => onResizeEnd,
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.centerLeft,
            ballDiameter: ballDiameter,
            onDragStart: onResizeStart,
            onDragUpdate: onResizeCenterLeft,
            onDragEnd: (details) => onResizeEnd,
          ),
        ),
      ],
    );
  }
}

class ManipulatingBall extends StatelessWidget {
  /// The diameter of the ball.
  final double ballDiameter;

  /// The direction of resizing of this ball.
  final ResizeDirection resizeDirection;

  /// This method will be invoked when the user starts dragging the ball.
  ///
  /// See [GestureDetector] for more information about this method.
  final void Function(DragStartDetails details)? onDragStart;

  /// This method will be invoked when the user drags the ball.
  ///
  /// See [GestureDetector] for more information about this method.
  final void Function(DragUpdateDetails delta)? onDragUpdate;

  /// This method will be invoked when the user stops dragging the ball.
  ///
  /// See [GestureDetector] for more information about this method.
  final void Function(DragEndDetails details)? onDragEnd;

  const ManipulatingBall({
    Key? key,
    required this.ballDiameter,
    required this.resizeDirection,
    required this.onDragStart,
    required this.onDragUpdate,
    this.onDragEnd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSingleChildLayout(
      delegate: _ManipulatingBallDelegate(
        ballDiameter: ballDiameter,
        resizeDirection: resizeDirection,
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onPanStart: onDragStart,
        onPanUpdate: onDragUpdate,
        onPanEnd: onDragEnd,
        child: Container(decoration: BoxDecoration(color: Colors.blue.withOpacity(0.7), shape: BoxShape.circle)),
      ),
    );
  }
}

class _ManipulatingBallDelegate extends SingleChildLayoutDelegate {
  final ResizeDirection resizeDirection;
  final double ballDiameter;

  _ManipulatingBallDelegate({
    required this.resizeDirection,
    required this.ballDiameter,
  });

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) =>
      BoxConstraints.loose(Size(ballDiameter, ballDiameter));

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    switch (resizeDirection) {
      case ResizeDirection.topLeft:
        return const Offset(0, 0);
      case ResizeDirection.topCenter:
        return Offset(size.width / 2 - childSize.width / 2, 0);
      case ResizeDirection.topRight:
        return Offset(size.width - childSize.width, 0);
      case ResizeDirection.centerRight:
        return Offset(size.width - childSize.width, size.height / 2 - childSize.height / 2);
      case ResizeDirection.bottomRight:
        return Offset(size.width - childSize.width, size.height - childSize.height);
      case ResizeDirection.bottomCenter:
        return Offset(size.width / 2 - childSize.width / 2, size.height - childSize.height);
      case ResizeDirection.bottomLeft:
        return Offset(0, size.height - childSize.height);
      case ResizeDirection.centerLeft:
        return Offset(0, size.height / 2 - childSize.height / 2);
    }
  }

  @override
  bool shouldRelayout(_ManipulatingBallDelegate oldDelegate) {
    return oldDelegate.resizeDirection != resizeDirection || oldDelegate.ballDiameter != ballDiameter;
  }
}

/// Represents a resize direction of a manipulating ball.
enum ResizeDirection {
  topCenter,
  bottomCenter,
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
  centerRight,
  centerLeft,
}
