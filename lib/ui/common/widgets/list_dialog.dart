import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:photo_editor/ui/common/routes/route_transitions.dart';
import 'package:photo_editor/ui/common/styles/styles.dart';
import 'package:photo_editor/ui/common/widgets/paginated_listview.dart';

import 'bar.dart';

typedef DataMapper<T> = Widget Function(T data);

/// Shows a dialog with a list of widgets created from a list of data of type [T].
/// Each widget corresponds to a data object. When a widget is tapped, and if [onSelected] is provided, then
/// this callback will be invoked with the corresponding value of the [T] type. See [ListDialog] for more details.
///
/// Parameters:
///
/// - [data] : The data that will correspond to the widgets in the list.
/// - [dataMapper] : Maps each data object into a corresponding widget.
/// - [onSelected] : The callback that will be invoked when an data object is selected.
/// - [resultsPerPage] : The number of widgets to display per page.
/// - [title] : The title of the dialog.
/// - [closeWhenTappedOutside] : Whether the dialog should close when tapped outside of the dialog.
void showListDialog<T>({
  required BuildContext context,
  required List<T> data,
  required DataMapper dataMapper,
  void Function(T data)? onSelected,
  int? resultsPerPage,
  Widget? title,
  bool? closeWhenTappedOutside,
  double? width,
  double? height,
  int? titleBarFlex,
  int? bodyFlex,
  Color? titleBackgroundColor,
  Color? bodyBackgroundColor,
  double? elevation,
  double? cacheExtent,
  double? itemExtent,
  ScrollPhysics? physics,
  bool? addAutomaticKeepAlives,
  bool? addRepaintBoundaries,
  bool? addSemanticIndexes,
  Clip? clipBehavior,
  DragStartBehavior? dragStartBehavior,
  ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
  EdgeInsets? padding,
  bool? primary,
  String? restorationId,
  bool? reverse,
  ScrollController? scrollController,
  Axis? scrollDirection,
  bool? shrinkWrap,
}) =>
    Navigator.of(context).push(
      fadeInRoute(
        child: ListDialog<T>(
          data: data,
          dataMapper: dataMapper,
          onSelected: onSelected,
          resultsPerPage: resultsPerPage,
          title: title,
          closeWhenTappedOutside: closeWhenTappedOutside,
          width: width,
          height: height,
          titleBarFlex: titleBarFlex,
          bodyFlex: bodyFlex,
          titleBarBackgroundColor: titleBackgroundColor,
          bodyBackgroundColor: bodyBackgroundColor,
          elevation: elevation,
          cacheExtent: cacheExtent,
          itemExtent: itemExtent,
          physics: physics,
          addAutomaticKeepAlives: addAutomaticKeepAlives,
          addRepaintBoundaries: addRepaintBoundaries,
          addSemanticIndexes: addSemanticIndexes,
          clipBehavior: clipBehavior,
          dragStartBehavior: dragStartBehavior,
          keyboardDismissBehavior: keyboardDismissBehavior,
          padding: padding,
          primary: primary,
          restorationId: restorationId,
          reverse: reverse,
          scrollController: scrollController,
          scrollDirection: scrollDirection,
          shrinkWrap: shrinkWrap,
        ),
        opaque: false,
        duration: kDialogTransitionDuration,
      ),
    );

/// A customizable dialog widget with a list of data objects of type [T]. Usually used with [showListDialog].
/// When the widget is pressed and if onSelected is provided then it will be invoked with the corresponding data object.
/// Parameters:
///
/// - [data] : The data objects that will correspond to the widgets in the list.
/// - [dataMapper] : Maps each data object into a corresponding widget.
/// - [onSelected] : The callback that will be invoked when an data object is selected.
/// - [resultsPerPage] : The number of widgets to display per page.
/// - [title] : The title of the dialog.
/// - [closeWhenTappedOutside] : Whether the dialog should close when tapped outside of the dialog.
class ListDialog<T> extends StatelessWidget {
  final List<T> data;
  final DataMapper dataMapper;
  final void Function(T data)? onSelected;
  final int? resultsPerPage;
  final Widget? title;
  final bool? closeWhenTappedOutside;
  final double? width;
  final double? height;
  final int? titleBarFlex;
  final int? bodyFlex;
  final Color? titleBarBackgroundColor;
  final Color? bodyBackgroundColor;
  final double? elevation;

  final double? cacheExtent;

  final double? itemExtent;

  final ScrollPhysics? physics;

  final bool? addAutomaticKeepAlives;

  final bool? addRepaintBoundaries;

  final bool? addSemanticIndexes;

  final Clip? clipBehavior;

  final DragStartBehavior? dragStartBehavior;

  final ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;

  final EdgeInsets? padding;

  final bool? primary;

  final String? restorationId;

  final bool? reverse;

  final ScrollController? scrollController;

  final Axis? scrollDirection;

  final bool? shrinkWrap;

  const ListDialog({
    Key? key,
    required this.data,
    required this.dataMapper,
    this.onSelected,
    this.resultsPerPage,
    this.title,
    this.closeWhenTappedOutside,
    this.width,
    this.height,
    this.titleBarFlex,
    this.bodyFlex,
    this.titleBarBackgroundColor,
    this.bodyBackgroundColor,
    this.elevation,
    this.cacheExtent,
    this.itemExtent,
    this.physics,
    this.addAutomaticKeepAlives,
    this.addRepaintBoundaries,
    this.addSemanticIndexes,
    this.clipBehavior,
    this.dragStartBehavior,
    this.keyboardDismissBehavior,
    this.padding,
    this.primary,
    this.restorationId,
    this.reverse,
    this.scrollController,
    this.scrollDirection,
    this.shrinkWrap,
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
                        child: Container(
                          color: bodyBackgroundColor ?? Theme.of(context).colorScheme.background,
                          child: PaginatedListView<T>(
                            data: data,
                            dataMapper: (data) => Listener(
                              behavior: HitTestBehavior.translucent,
                              onPointerUp: (_) => onSelected?.call(data),
                              child: dataMapper.call(data),
                            ),
                            pageSize: resultsPerPage,
                            cacheExtent: cacheExtent,
                            itemExtent: itemExtent,
                            physics: physics,
                            addAutomaticKeepAlives: addAutomaticKeepAlives,
                            addRepaintBoundaries: addRepaintBoundaries,
                            addSemanticIndexes: addSemanticIndexes,
                            clipBehavior: clipBehavior,
                            dragStartBehavior: dragStartBehavior,
                            keyboardDismissBehavior: keyboardDismissBehavior,
                            padding: padding,
                            primary: primary,
                            restorationId: restorationId,
                            reverse: reverse,
                            scrollController: scrollController,
                            scrollDirection: scrollDirection,
                            shrinkWrap: shrinkWrap,
                          ),
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
