import 'package:flutter_test/flutter_test.dart';
import 'package:photo_editor/extensions/double_extension.dart';

void main() {
  group('toPrecision', () {
    test('Should return correct result.', () {
      double value = 1.23456789;
      expect(value.toPrecision(3), 1.235);
    });
  });
}
