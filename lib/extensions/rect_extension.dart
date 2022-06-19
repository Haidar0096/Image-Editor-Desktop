import 'dart:ui' as ui;

extension RectExtension on ui.Rect {
  /// Returns true if this [rect] totally contains [other] (i.e. all
  /// of its 4 vertices) and [other.size] < [size]
  bool containsRect(ui.Rect other) =>
      contains(other.topLeft) &&
      contains(other.bottomRight) &&
      other.size < size;
}
