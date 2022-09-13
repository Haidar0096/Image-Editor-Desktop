import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:photo_editor/ui/common/styles/styles.dart';

typedef DataMapper<T> = Widget Function(T data);

/// A special list view that lazily displays the provided data. For detailed info on the parameters, see the [ListView] and [PagedListView] classes.
class PaginatedListView<T> extends StatefulWidget {
  /// The data to be displayed in the list.
  final List<T> data;

  /// The mapper of the data into widgets.
  final DataMapper dataMapper;

  /// The number of items to render in the visible area of the list (a.k.a. page).
  final int? pageSize;

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

  const PaginatedListView({
    Key? key,
    required this.data,
    required this.dataMapper,
    this.pageSize,
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
  State<PaginatedListView> createState() => _PaginatedListViewState<T>();
}

class _PaginatedListViewState<T> extends State<PaginatedListView<T>> {
  late final int _pageSize;
  late final PagingController<int, T> _controller;

  void _appendPage(int pageKey) {
    int pageStart = pageKey * _pageSize;
    int pageEnd = (pageKey + 1) * _pageSize;
    if (pageEnd <= widget.data.length) {
      _controller.appendPage(
          widget.data.sublist(pageStart, pageEnd), pageKey + 1);
    } else {
      _controller.appendLastPage(widget.data.sublist(pageStart));
    }
  }

  @override
  void initState() {
    _pageSize = widget.pageSize ?? 20;
    _controller = PagingController(firstPageKey: 0);
    _controller.addPageRequestListener(_appendPage);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removePageRequestListener(_appendPage);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, T>(
      pagingController: _controller,
      builderDelegate: PagedChildBuilderDelegate<T>(
        itemBuilder: (context, data, index) => widget.dataMapper(data),
        animateTransitions: true,
        transitionDuration: kScrollTransitionDuration,
        firstPageProgressIndicatorBuilder: (context) =>
            const CircularProgressIndicator(),
      ),
      cacheExtent: widget.cacheExtent,
      itemExtent: widget.itemExtent,
      physics: widget.physics,
      addAutomaticKeepAlives: widget.addAutomaticKeepAlives ?? true,
      addRepaintBoundaries: widget.addRepaintBoundaries ?? true,
      addSemanticIndexes: widget.addSemanticIndexes ?? true,
      clipBehavior: widget.clipBehavior ?? Clip.hardEdge,
      dragStartBehavior: widget.dragStartBehavior ?? DragStartBehavior.start,
      keyboardDismissBehavior: widget.keyboardDismissBehavior ??
          ScrollViewKeyboardDismissBehavior.manual,
      padding: widget.padding,
      primary: widget.primary,
      restorationId: widget.restorationId,
      reverse: widget.reverse ?? false,
      scrollController: widget.scrollController,
      scrollDirection: widget.scrollDirection ?? Axis.vertical,
      shrinkWrap: widget.shrinkWrap ?? true,
    );
  }
}
