part of 'send_bloc.dart';

@freezed
class SendState with _$SendState {
  const SendState._();

  const factory SendState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
    required UserProfileData receiverUser,
    required WalletTokenData tokenData,
  }) = _SendState;
}
