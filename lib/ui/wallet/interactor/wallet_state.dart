part of 'wallet_bloc.dart';

@freezed
class WalletState with _$WalletState {
  const WalletState._();

  const factory WalletState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
    @Default([]) List<TokenData> tokens,
    @Default([]) List<TransactionModel> recentTransactions,
  }) = _WalletState;
}
