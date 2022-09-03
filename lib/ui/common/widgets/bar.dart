import 'package:flutter/material.dart';

/// A bar widget, which is a column or row with actions (widgets). If you want to place a widget at a custom position in the bar,
/// you can use the [BarAction] widget and customize it to your needs.
class Bar extends StatelessWidget {
  /// The background color of the bar.
  final Color? backgroundColor;

  /// The children of the bar.
  final List<Widget> actions;

  /// The alignment of the actions on the main axis of the bar.
  final MainAxisAlignment? mainAxisAlignment;

  /// The alignment of the actions on the cross axis of the bar.
  final CrossAxisAlignment? crossAxisAlignment;

  /// The main axis direction of the bar.
  final Axis mainAxis;

  /// The width of the bar.
  final double? width;

  /// The height of the bar.
  final double? height;

  /// Creates a bar that can be horizontal or vertical.
  const Bar({
    Key? key,
    this.backgroundColor,
    required this.actions,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.mainAxis = Axis.vertical,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> alignedChildren = [];
    final List<Widget> nonAlignedChildren = [];
    final List<Widget> positionedChildren = [];
    late Widget nonAlignedChildrenWidget;

    for (var action in actions) {
      if (action is BarAction && action.preferredAlignment != null) {
        alignedChildren.add(
          Align(
            alignment: action.preferredAlignment ?? Alignment.centerRight,
            child: action,
          ),
        );
      } else if (action is BarAction && action.preferredOffset != null) {
        positionedChildren.add(
          Positioned(
            left: action.preferredOffset!.dx,
            top: action.preferredOffset!.dy,
            child: action,
          ),
        );
      } else {
        nonAlignedChildren.add(action);
      }
    }

    if (mainAxis == Axis.horizontal) {
      nonAlignedChildrenWidget = Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: nonAlignedChildren,
      );
    } else if (mainAxis == Axis.vertical) {
      nonAlignedChildrenWidget = Column(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: nonAlignedChildren,
      );
    }
    nonAlignedChildrenWidget = Positioned.fill(child: nonAlignedChildrenWidget);

    return Container(
      width: width,
      height: height,
      color: backgroundColor ?? Theme.of(context).colorScheme.primary,
      child: Stack(
        children: [
          ...alignedChildren,
          ...positionedChildren,
          nonAlignedChildrenWidget,
        ],
      ),
    );
  }
}

/// A widget that is usually used as a child of a [Bar] widget. It has customizations specialized for the [Bar] widget.
class BarAction extends StatelessWidget {
  /// The child widget of the action.
  final Widget child;

  /// A callback that is invoked when the action is tapped.
  final VoidCallback? onTap;

  /// The preferred alignment of the action. This parameter may have effect only when the action is placed in a [Bar] widget.
  final Alignment? preferredAlignment;

  /// The preferred offset of the action.
  ///
  /// This parameter may have effect only when the action is placed in a [Bar] widget.
  ///
  /// The origin that this offset is referenced to is the top left of the [Bar] widget that
  /// this widget is placed inside.
  final Offset? preferredOffset;

  /// The padding around the action.
  final EdgeInsets? padding;

  /// Creates a bar action. Only one of [preferredOffset] and [preferredAlignment] can be non-null.
  const BarAction({
    Key? key,
    required this.child,
    this.onTap,
    this.preferredAlignment,
    this.preferredOffset,
    this.padding,
  })  : assert(
            (preferredOffset != null && preferredAlignment == null) ||
                (preferredOffset == null && preferredAlignment != null) ||
                (preferredOffset == null && preferredAlignment == null),
            'Only one of preferredOffset and preferredAlignment can be non-null.'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    late Widget widget;

    widget = Padding(
      padding: padding ?? EdgeInsets.zero,
      child: child,
    );

    widget = Listener(
      behavior: HitTestBehavior.translucent,
      onPointerUp: (_) => onTap?.call(),
      child: widget,
    );

    return widget;
  }
}
