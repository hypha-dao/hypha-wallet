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

  bool get isSubmitEnabled {
    final parsedAmount = double.tryParse(userEnteredAmount ?? '0') ?? 0;
    return parsedAmount > 0 && parsedAmount <= (tokenData.userOwnedAmount ?? 0);
  }

  String get formattedAmount {
    return userEnteredAmount?.let((it) => double.tryParse(it)?.toStringAsFixed(tokenData.precision) ?? it) ?? '0';
  }
}
