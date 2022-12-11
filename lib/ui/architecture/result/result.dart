part 'error.dart';
part 'value.dart';

abstract class Result<V, E> {
  /// Whether this result is a value result.
  ///
  /// Always the opposite of [isError].
  bool get isValue;

  /// Whether this result is an error result.
  ///
  /// Always the opposite of [isValue].
  bool get isError;

  /// If this is a value result, returns itself.
  ///
  /// Otherwise returns `null`.
  ValueResult<V, E>? get asValue;

  /// If this is an error result, returns itself.
  ///
  /// Otherwise returns `null`.
  ErrorResult<V, E>? get asError;

  /// Creates a `Result` holding a value.
  ///
  /// Alias for [ValueResult.ValueResult].
  factory Result.value(V value) = ValueResult<V, E>;

  /// Creates a `Result` holding an error.
  ///
  /// Alias for [ErrorResult.ErrorResult].
  factory Result.error(E error, [StackTrace? stackTrace]) => ErrorResult(error, stackTrace);
}

extension ResultExtension<T, E> on Result<T, E> {
  T? get valueOrNull => asValue?.value;

  /// Maps a result to a value, or Throws if its not a value result
  T get valueOrCrash {
    if (isError) {
      throw Exception('Result is not value');
    } else {
      return asValue!.value;
    }
  }
}
