part of 'send_bloc.dart';

@freezed
class SendState with _$SendState {
  const SendState._();

  const factory SendState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
    @Default(null) String? userEnteredAmount,
    @Default(null) String? memo,
    required UserProfileData receiverUser,
    required WalletTokenData tokenData,
  }) = _SendState;
}
