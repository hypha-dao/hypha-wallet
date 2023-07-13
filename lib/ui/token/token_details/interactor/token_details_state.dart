part of 'token_details_bloc.dart';

@freezed
class TokenDetailsState with _$TokenDetailsState {
  const TokenDetailsState._();

  const factory TokenDetailsState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
    required WalletTokenData token,
    @Default(true) bool loadingTransaction,
    @Default([]) List<WalletTransactionTileData> recentTransactions,
    @Default(true) bool loadingTokenBalance,
  }) = _TokenDetailsState;
}
