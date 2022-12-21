/// Used for evaluating a block of several statements where an expression is required.
///
/// someNullable ?? run(() {
///   var defaultValue = ......;
///   // several process...
///
///   return defaultValue;
/// });
ReturnType run<ReturnType>(ReturnType Function() operation) {
  return operation();
}

extension ScopeFunctionsForObject<T extends Object> on T {
  /// Often used for executing a code block only with non-null values.
  /// someNullable?.let((it) { ... });
  ReturnType let<ReturnType>(ReturnType Function(T self) operationFor) {
    return operationFor(this);
  }

  /// Used for additional actions that don't alter the object, such as logging or printing debug information.
  /// something.also((it) { ... }); // returns something.
  T also(void Function(T self) operationFor) {
    operationFor(this);
    return this;
  }
}