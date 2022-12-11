part of 'result.dart';

/// A result representing a returned value.
class ValueResult<V, E> implements Result<V, E> {
  /// The result of a successful computation.
  final V value;

  @override
  bool get isValue => true;

  @override
  bool get isError => false;

  @override
  ValueResult<V, E> get asValue => this;

  ValueResult(this.value);

  @override
  ErrorResult<V, E>? get asError => null;
}
