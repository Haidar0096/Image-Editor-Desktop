import 'dart:ui' as ui;

import 'package:photo_editor/extensions/rect_extension.dart';
import 'package:test/test.dart';

void main() {
  test('containsOther test', () {

    ui.Rect big = ui.Offset.zero & const ui.Size(500, 500);

    // fully contained rect
    ui.Rect contained = ui.Offset.zero & const ui.Size(250, 250);

    // partially contained rect
    ui.Rect partiallyContained = ui.Offset.zero & const ui.Size(250, 501);

    // fully non-contained rect
    ui.Rect notContained = const ui.Offset(800, 800) & const ui.Size(250, 250);

    expect(big.containsRect(contained), true);
    expect(big.containsRect(partiallyContained), false);
    expect(big.containsRect(notContained), false);
  });
}
