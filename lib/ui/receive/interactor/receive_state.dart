part of 'receive_bloc.dart';

@freezed
class ReceiveState with _$ReceiveState {
  const ReceiveState._();

  const factory ReceiveState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
    @Default(null) String? userEnteredAmount,
    @Default(null) String? memo,
    required WalletTokenData tokenData,
  }) = _ReceiveState;

  bool get isSubmitEnabled {
    final parsedAmount = double.tryParse(userEnteredAmount ?? '0') ?? 0;
    return parsedAmount > 0 && parsedAmount <= (tokenData.userOwnedAmount ?? 0);
  }

  String get formattedAmount {
    return userEnteredAmount?.let((it) => double.tryParse(it)?.toStringAsFixed(tokenData.precision) ?? it) ?? '0';
  }
}
