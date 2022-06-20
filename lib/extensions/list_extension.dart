extension ListExtension<T> on List<T> {
  T? get lastOrNull => isEmpty ? null : last;
}
