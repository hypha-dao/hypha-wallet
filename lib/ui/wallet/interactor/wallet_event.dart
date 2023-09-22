part of 'wallet_bloc.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.initial() = _Initial;
  const factory WalletEvent.onRefresh() = _OnRefresh;
  const factory WalletEvent.clearPageCommand() = _ClearPageCommand;
  const factory WalletEvent.onTransactionsChanged(Result<List<WalletTransactionTileData>, HyphaError> value) = _OnTransactionsChanged;


}
