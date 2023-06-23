enum KeypadKey {
  one(1),
  two(2),
  three(3),
  four(4),
  five(5),
  six(6),
  seven(7),
  eight(8),
  nine(9),
  dot(-1),
  zero(0),
  delete(-2);

  const KeypadKey(this.value);

  final num value;
}
