import 'package:flutter/material.dart';
import 'package:photo_editor/ui/common/routes/route_transitions.dart';
import 'package:photo_editor/ui/common/styles/styles.dart';

import 'bar.dart';

typedef OptionMapper<T> = Widget Function(T option);

/// Shows a dialog with a list of widgets created from a list of options of type [T].
/// Each widget corresponds to an option. When a widget is tapped, and if [onSelected] is provided, then
/// this callback will be invoked with the corresponding value of the [T] type. See [ListDialog] for more details.
///
/// Parameters:
///
/// - [options] : The options that will correspond to the widgets in the list.
/// - [optionMapper] : Maps each option into a corresponding widget.
/// - [onSelected] : The callback that will be invoked when an option is selected.
/// - [title] : The title of the dialog.
/// - [closeWhenTappedOutside] : Whether the dialog should close when tapped outside of the dialog.
void showListDialog<T>({
  required BuildContext context,
  required List<T> options,
  required OptionMapper optionMapper,
  void Function(T option)? onSelected,
  Widget? title,
  bool? closeWhenTappedOutside,
  double? width,
  double? height,
  int? titleBarFlex,
  int? bodyFlex,
  Color? titleBackgroundColor,
  Color? bodyBackgroundColor,
  double? elevation,
}) =>
    Navigator.of(context).push(
      fadeInRoute(
        child: ListDialog<T>(
          options: options,
          optionMapper: optionMapper,
          onSelected: onSelected,
          title: title,
          closeWhenTappedOutside: closeWhenTappedOutside,
          width: width,
          height: height,
          titleBarFlex: titleBarFlex,
          bodyFlex: bodyFlex,
          titleBarBackgroundColor: titleBackgroundColor,
          bodyBackgroundColor: bodyBackgroundColor,
          elevation: elevation,
        ),
        opaque: false,
        duration: kDialogTransitionDuration,
      ),
    );

/// A customizable dialog widget with a list of options of type [T]. Usually used with [showListDialog].
/// When the widget is pressed and if onSelected is provided then it will be invoked with the corresponding option.
/// Parameters:
///
/// - [options] : The options that will correspond to the widgets in the list.
/// - [optionMapper] : Maps each option into a corresponding widget.
/// - [onSelected] : The callback that will be invoked when an option is selected.
/// - [title] : The title of the dialog.
/// - [closeWhenTappedOutside] : Whether the dialog should close when tapped outside of the dialog.
class ListDialog<T> extends StatelessWidget {
  final List<T> options;
  final OptionMapper optionMapper;
  final void Function(T option)? onSelected;
  final Widget? title;
  final bool? closeWhenTappedOutside;
  final double? width;
  final double? height;
  final int? titleBarFlex;
  final int? bodyFlex;
  final Color? titleBarBackgroundColor;
  final Color? bodyBackgroundColor;
  final double? elevation;

  const ListDialog({
    Key? key,
    required this.options,
    required this.optionMapper,
    this.onSelected,
    this.title,
    this.closeWhenTappedOutside,
    this.width,
    this.height,
    this.titleBarFlex,
    this.bodyFlex,
    this.titleBarBackgroundColor,
    this.bodyBackgroundColor,
    this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData moc = MediaQuery.of(context);
    return Stack(
      children: [
        if (closeWhenTappedOutside ?? true)
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
          ),
        Align(
          alignment: Alignment.center,
          child: Material(
            color: Colors.transparent,
            child: Card(
              color: Colors.transparent,
              elevation: elevation ?? 100,
              child: ClipRRect(
                borderRadius: kBorderRadius,
                child: SizedBox(
                  width: width ?? moc.size.width / 1.8,
                  height: height ?? moc.size.height / 1.5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: titleBarFlex ?? 10,
                        child: Bar(
                          backgroundColor: titleBarBackgroundColor,
                          actions: [
                            BarAction(
                              preferredAlignment: Alignment.center,
                              child: Container(
                                child: title,
                              ),
                            ),
                          ],
                          mainAxis: Axis.horizontal,
                        ),
                      ),
                      Expanded(
                        flex: bodyFlex ?? 90,
                        child: ListDialogBody(
                          options: options,
                          optionMapper: optionMapper,
                          onSelected: onSelected,
                          backgroundColor: bodyBackgroundColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ListDialogBody<T> extends StatelessWidget {
  final List<T> options;
  final OptionMapper optionMapper;
  final void Function(T option)? onSelected;
  final Color? backgroundColor;

  const ListDialogBody({
    Key? key,
    required this.options,
    required this.optionMapper,
    this.onSelected,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return Container(
      color: backgroundColor ?? toc.colorScheme.background,
      child: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return Listener(
            onPointerUp: (_) => onSelected?.call(options[index]),
            child: optionMapper.call(options[index]),
          );
        },
      ),
    );
  }
}
