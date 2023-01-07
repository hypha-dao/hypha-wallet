part of 'edit_account_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.showLoadingDialog() = _ShowLoadingDialog;
  const factory PageCommand.hideLoadingDialog() = _HideLoadingDialog;
  const factory PageCommand.navigateToSuccess() = _NavigateToSuccess;
}
