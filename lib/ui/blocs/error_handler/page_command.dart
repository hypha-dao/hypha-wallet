part of 'error_handler_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.requestForceUpdate() = _RequestForceUpdate;

  const factory PageCommand.showReLoginDialog() = _ShowReLoginDialog;

  const factory PageCommand.showConnectivityErrorDialog() = _ShowConnectivityErrorDialog;

  const factory PageCommand.showErrorDialog(HyphaError hyphaError) = _ShowErrorDialog;

  const factory PageCommand.showErrorMessage(String message) = _ShowErrorMessage;
}
