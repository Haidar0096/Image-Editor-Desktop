import 'dart:ui';

extension RectExtension on Rect {
  /// Returns true if this [rect] totally contains [other] (i.e. all
  /// of its 4 vertices) and [other.size] < [size]
  bool containsRect(Rect other) =>
      contains(other.topLeft) &&
      contains(other.bottomRight) &&
      other.size < size;
}
