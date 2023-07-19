part of 'wallet_bloc.dart';

@freezed
class WalletState with _$WalletState {
  const WalletState._();

  const factory WalletState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
    @Default(true) bool loadingTransaction,
    @Default([]) List<WalletTokenData> tokens,
    @Default([]) List<WalletTransactionTileData> recentTransactions,
  }) = _WalletState;
}
