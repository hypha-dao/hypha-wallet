part of 'error_handler_bloc.dart';

@freezed
class ErrorHandlerEvent with _$ErrorHandlerEvent {
  const factory ErrorHandlerEvent.onError(HyphaError error) = _OnError;

  const factory ErrorHandlerEvent.onClearPageCommand() = _OnClearPageCommand;
}
