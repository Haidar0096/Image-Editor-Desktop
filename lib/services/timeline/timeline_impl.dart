import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:photo_editor/services/timeline/timeline.dart';

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
  void clear() => _elements.clear();

  @override
  Option<T> get current => optionOf(_elements.getOrNull(_currentIndex));

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
  Option<T> get top => optionOf(_elements.lastOrNull);

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
