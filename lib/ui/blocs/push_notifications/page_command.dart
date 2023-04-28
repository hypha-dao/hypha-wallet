part of 'push_notifications_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToSignTransaction(ScanQrCodeResultData data) = _NavigateToSignTransaction;
}
