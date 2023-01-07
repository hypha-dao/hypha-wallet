part of 'create_account_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.showLoadingDialog() = _ShowLoadingDialog;
  const factory PageCommand.hideLoadingDialog() = _HideLoadingDialog;
}
