import 'dart:collection';

import 'package:dartz/dartz.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:injectable/injectable.dart';

import 'package:photo_editor/extensions/list_extension.dart';

/// A timeline of values of a variable of type [T].
///
/// It can be viewed as a list of elements of type [T], with element at index 0 being the oldest.
/// You can call [current] to get the element at the current index, or [next] to get the element
/// at the next index, or [previous] to get the element at the previous index.
///
/// If there is no next (resp. previous) element available (i.e. the current index in the timeline list is at
/// the end (resp. beginning)), then the same current element at the end (resp. beginning) of the list will be
/// returned.
@injectable
abstract class Timeline<T> {
  @factoryMethod
  factory Timeline({int? maxSize}) =>
      TimelineDefaultImpl(maxSize: maxSize ?? 30);

  /// Returns an [UnmodifiableListView] of elements saved in the timeline, element at index 0 being the oldest.
  UnmodifiableListView<T> get elements;

  /// The max size of the timeline.
  int get maxSize;

  /// The current number of elements in the timeline.
  int get length;

  /// Checks if the timeline is empty.
  bool get isEmpty;

  /// Checks if the timeline is not empty.
  bool get isNotEmpty;

  /// Checks if there is an element after the current position in the timeline list.
  bool get hasNext;

  /// Checks if there is an element before the current position in the timeline list.
  bool get hasPrevious;

  /// Pushes an element on the top of the timeline. This will also reset the current
  /// position to the position of the last added element to the timeline.
  /// If the timeline is full, the oldest element will be removed to make place.
  void push(T t);

  /// Clears the timeline.
  void clear();

  /// Returns the element after the current position in the timeline,
  /// and moves the current position in the timeline to that element's position.
  /// If there is no next element available, current position stays where it is and the element at that position
  /// is returned (which will be in this case the last available position - i.e. newest element - in the timeline).
  Option<T> get next;

  /// Returns the element at the current position in the timeline.
  Option<T> get current;

  /// Returns the element before the current position in the timeline,
  /// and moves the current position in the timeline to that element.
  /// If there is no previous element available, current position stays where it is and the element at that position
  /// is returned (which will be in this case the first available position - i.e. oldest element - in the timeline).
  Option<T> get previous;

  /// Returns the top (newest element) in the timeline, regardless of where the current position currently is.
  /// Does not change the current position in the timeline though.
  Option<T> get top;

  /// Moves the current position in the timeline to the first element of the timeline.
  /// Does nothing if the timeline is empty.
  void toTheBeginning();

  /// Moves the current position in the timeline to the last element of the timeline.
  /// Does nothing if the timeline is empty.
  void toTheEnd();
}

/// The default implementation of the timeline which uses a list and a variable to store the current index, to implement the contract.
class TimelineDefaultImpl<T> implements Timeline<T> {
  final List<T> _elements = [];

  int _currentIndex = 0;

  @override
  final int maxSize;

  TimelineDefaultImpl({required this.maxSize});

  @override
  UnmodifiableListView<T> get elements => UnmodifiableListView(_elements);

  @override
  int get length => _elements.length;

  @override
  bool get isEmpty => _elements.isEmpty;

  @override
  bool get isNotEmpty => _elements.isNotEmpty;

  @override
  bool get hasNext => _currentIndex < _elements.length - 1;

  @override
  bool get hasPrevious => _currentIndex > 0;

  @override
  void push(T t) {
    if (_elements.length == maxSize) {
      _elements.removeAt(0);
    }
    _elements.add(t);
    _currentIndex = _elements.length - 1;
  }

  @override
  void clear() {
    _elements.clear();
  }

  @override
  Option<T> get current {
    return optionOf(_elements.getOrNull(_currentIndex));
  }

  @override
  Option<T> get next {
    _currentIndex++;
    if (_currentIndex >= _elements.length) {
      _currentIndex--;
    }
    return optionOf(_elements.getOrNull(_currentIndex));
  }

  @override
  Option<T> get previous {
    _currentIndex--;
    if (_currentIndex < 0) {
      _currentIndex++;
    }
    return optionOf(_elements.getOrNull(_currentIndex));
  }

  @override
  Option<T> get top {
    return optionOf(_elements.lastOrNull);
  }

  @override
  void toTheBeginning() {
    if (_elements.isNotEmpty) {
      _currentIndex = 0;
    }
  }

  @override
  void toTheEnd() {
    if (_elements.isNotEmpty) {
      _currentIndex = _elements.length - 1;
    }
  }
}
