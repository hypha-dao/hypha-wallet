extension NullableStringExtension on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

extension StringExtension on String {
  // convert blockchain quantity to double, e.g. "1.0000 SEEDS"
  double get quantityAsDouble {
    final List<String> parts = split(' ');
    return double.parse(parts[0]);
  }
}
