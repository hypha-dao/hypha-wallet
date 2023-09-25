part of 'deeplink_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToCreateAccount() = _NavigateToCreateAccount;
  const factory PageCommand.showJoinDaoRationale(String daoName, String secret) = _ShowJoinDaoRationale;
  const factory PageCommand.navigateToSignTransaction(ScanQrCodeResultData data) = _ESRLinkNavigateToSignTransaction;
}
