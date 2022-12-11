enum NetworkError { token, other }

enum GenericError { generic }

class PageError<T> {
  final T pageErrorType;
  final String message;

  PageError(this.pageErrorType, this.message);
}
