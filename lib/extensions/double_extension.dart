extension DoubleExtension on double {
  /// Returns a double with the precision of [n]. Example: 1.23456789.toPrecision(3) => 1.235 ( the digits after the 3rd digit were rounded as well).
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}
