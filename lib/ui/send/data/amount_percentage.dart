enum AmountPercentage {
  ten(.10),
  twentyFive(.25),
  fifty(.50),
  seventyFive(.75),
  max(1);

  const AmountPercentage(this.value);

  final num value;
}
