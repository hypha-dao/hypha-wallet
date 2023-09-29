part of 'deeplink_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToCreateAccount() = _NavigateToCreateAccount;
  const factory PageCommand.showJoinDaoRationale(InviteLinkData inviteLinkData) = _ShowJoinDaoRationale;
  const factory PageCommand.navigateToSignTransaction(ScanQrCodeResultData data) = _ESRLinkNavigateToSignTransaction;
}
