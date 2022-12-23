part of 'error_handler_bloc.dart';

@freezed
class ErrorHandlerState with _$ErrorHandlerState {
  const factory ErrorHandlerState({
    @Default(null) PageCommand? pageCommand,
  }) = _ErrorHandlerState;
}
