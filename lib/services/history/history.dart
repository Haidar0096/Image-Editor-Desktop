import 'package:dartz/dartz.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// A history of values of a variable of type [T].
/// The history uses an iterator to refer to the elements stored in it.
abstract class History<T> {
  factory History({int? maxSize}) {
    return _HistoryImpl(maxSize: maxSize ?? 100);
  }

  /// Returns an [UnmodifiableListView] of elements saved in the history, element at index 0 is the oldest.
  UnmodifiableListView<T> get elements;

  /// The max size of the history.
  int get maxSize;

  /// The current number of elements in the history.
  int get length;

  /// Checks if the history is empty.
  bool get isEmpty;

  /// Checks if the history is not empty.
  bool get isNotEmpty;

  /// Checks if there is an element after the iterator position.
  bool get hasNext;

  /// Checks if there is an element before the iterator position.
  bool get hasPrevious;

  /// Pushes an element on the top of the history. This will also reset the iterator
  /// to the position of the last added element to the history.
  /// If the history is full, the oldest element will be removed to make place.
  void push(T t);

  /// Clears the history.
  void clear();

  /// Returns the element after the iterator position in the history without deleting it,
  /// and moves the history iterator to that element.
  /// If there is no next element, iterator stays where it is and the element at that position
  /// is returned.
  Option<T> get next;

  /// Returns the current element at the iterator position in the history without deleting it.
  Option<T> get current;

  /// Returns the element before the iterator position in the history without deleting it,
  /// and moves the history iterator to that element.
  /// If there is no previous element, iterator stays where it is and the element at that position
  /// is returned.
  Option<T> get previous;

  /// Returns the top (newest element) in the history, regardless of where the iterator is currently.
  /// Does not change the position of the iterator.
  Option<T> get top;

  /// Moves the iterator to the last element of the history.
  /// Does nothing if the history is empty.
  void resetIterator();
}

class _HistoryImpl<T> implements History<T> {
  final List<T> _elements = [];

  int _currentIndex = 0;

  @override
  final int maxSize;

  _HistoryImpl({required this.maxSize});

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
  void resetIterator() {
    if (_elements.isNotEmpty) {
      _currentIndex = _elements.length - 1;
    }
  }
}
