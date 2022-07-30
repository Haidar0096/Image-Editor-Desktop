import 'package:flutter/material.dart';

/// A widget that places manipulating balls on top of its child. Each ball can be configured with a custom handler.
class ManipulatingBallsWidget extends StatefulWidget {
  final void Function(Offset delta)? onResizeCenterRight;
  final void Function(Offset delta)? onResizeCenterLeft;
  final void Function(Offset delta)? onResizeTopCenter;
  final void Function(Offset delta)? onResizeBottomCenter;
  final void Function(Offset delta)? onResizeTopLeft;
  final void Function(Offset delta)? onResizeTopRight;
  final void Function(Offset delta)? onResizeBottomLeft;
  final void Function(Offset delta)? onResizeBottomRight;
  final void Function()? onResizeEnd;
  final double ballDiameter;
  final Widget child;

  const ManipulatingBallsWidget({
    Key? key,
    required this.child,
    this.ballDiameter = 40.0,
    this.onResizeCenterRight,
    this.onResizeCenterLeft,
    this.onResizeTopCenter,
    this.onResizeBottomCenter,
    this.onResizeTopLeft,
    this.onResizeTopRight,
    this.onResizeBottomLeft,
    this.onResizeBottomRight,
    this.onResizeEnd,
  }) : super(key: key);

  @override
  ManipulatingBallsWidgetState createState() => ManipulatingBallsWidgetState();
}

class ManipulatingBallsWidgetState extends State<ManipulatingBallsWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: widget.child,
        ),
        Positioned.fill(
          child: ManipulatingBall(
            ballDiameter: widget.ballDiameter,
            resizeDirection: ResizeDirection.topLeft,
            onDrag: (delta) {
              widget.onResizeTopLeft?.call(delta);
            },
            onDragEnd: () {
              widget.onResizeEnd?.call();
            },
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.topCenter,
            ballDiameter: widget.ballDiameter,
            onDrag: (delta) {
              widget.onResizeTopCenter?.call(delta);
            },
            onDragEnd: () {
              widget.onResizeEnd?.call();
            },
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.topRight,
            ballDiameter: widget.ballDiameter,
            onDrag: (delta) {
              widget.onResizeTopRight?.call(delta);
            },
            onDragEnd: () {
              widget.onResizeEnd?.call();
            },
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.centerRight,
            ballDiameter: widget.ballDiameter,
            onDrag: (delta) {
              widget.onResizeCenterRight?.call(delta);
            },
            onDragEnd: () {
              widget.onResizeEnd?.call();
            },
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.bottomRight,
            ballDiameter: widget.ballDiameter,
            onDrag: (delta) {
              widget.onResizeBottomRight?.call(delta);
            },
            onDragEnd: () {
              widget.onResizeEnd?.call();
            },
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.bottomCenter,
            ballDiameter: widget.ballDiameter,
            onDrag: (delta) {
              widget.onResizeBottomCenter?.call(delta);
            },
            onDragEnd: () {
              widget.onResizeEnd?.call();
            },
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.bottomLeft,
            ballDiameter: widget.ballDiameter,
            onDrag: (delta) {
              widget.onResizeBottomLeft?.call(delta);
            },
            onDragEnd: () {
              widget.onResizeEnd?.call();
            },
          ),
        ),
        Positioned(
          child: ManipulatingBall(
            resizeDirection: ResizeDirection.centerLeft,
            ballDiameter: widget.ballDiameter,
            onDrag: (delta) {
              widget.onResizeCenterLeft?.call(delta);
            },
            onDragEnd: () {
              widget.onResizeEnd?.call();
            },
          ),
        ),
      ],
    );
  }
}

class ManipulatingBall extends StatelessWidget {
  final double ballDiameter;
  final ResizeDirection resizeDirection;

  const ManipulatingBall({
    Key? key,
    required this.ballDiameter,
    required this.resizeDirection,
    required this.onDrag,
    this.onDragEnd,
  }) : super(key: key);

  final void Function(Offset delta)? onDrag;
  final void Function()? onDragEnd;

  @override
  Widget build(BuildContext context) {
    return CustomSingleChildLayout(
      delegate: _ManipulatingBallDelegate(
        ballDiameter: ballDiameter,
        resizeDirection: resizeDirection,
      ),
      child: GestureDetector(
        onPanUpdate: (details) => onDrag?.call(details.delta),
        onPanEnd: (details) => onDragEnd?.call(),
        child: Container(decoration: BoxDecoration(color: Colors.blue.withOpacity(0.5), shape: BoxShape.circle)),
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
