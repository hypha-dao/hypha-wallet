part of 'result.dart';

/// A result representing a thrown error.
class ErrorResult<T, ErrorType> implements Result<T, ErrorType> {
  /// The error object that was thrown.
  final ErrorType error;
  final StackTrace? stackTrace;

  @override
  bool get isValue => false;

  @override
  bool get isError => true;

  @override
  ValueResult<T, ErrorType>? get asValue => null;

  @override
  ErrorResult<T, ErrorType> get asError => this;

  ErrorResult(this.error, [this.stackTrace]);
}
