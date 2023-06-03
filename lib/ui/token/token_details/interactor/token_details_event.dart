part of 'token_details_bloc.dart';

@freezed
class TokenDetailsEvent with _$TokenDetailsEvent {
  const factory TokenDetailsEvent.initial() = _Initial;
  const factory TokenDetailsEvent.clearPageCommand() = _ClearPageCommand;
  const factory TokenDetailsEvent.onSendTapped() = _OnSendTapped;
  const factory TokenDetailsEvent.onReceiveTapped() = _OnReceiveTapped;
  const factory TokenDetailsEvent.addTokenToUser(WalletTokenData token) = _AddTokenToUser;
  const factory TokenDetailsEvent.removeTokenToUser(WalletTokenData token) = _RemoveTokenToUser;
}
