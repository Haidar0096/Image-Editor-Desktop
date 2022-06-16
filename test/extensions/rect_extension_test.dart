import 'dart:ui';

import 'package:photo_editor/extensions/rect_extension.dart';
import 'package:test/test.dart';

void main() {
  group('containsRect', () {
    test('Should return correct results in different possible cases.', () {
      Rect big = Offset.zero & const Size(500, 500);

      // fully contained rect
      Rect contained = Offset.zero & const Size(250, 250);

      // partially contained rect
      Rect partiallyContained = Offset.zero & const Size(250, 501);

      // fully non-contained rect
      Rect notContained = const Offset(800, 800) & const Size(250, 250);

      expect(big.containsRect(contained), true);
      expect(big.containsRect(partiallyContained), false);
      expect(big.containsRect(notContained), false);
    });
  });
}
