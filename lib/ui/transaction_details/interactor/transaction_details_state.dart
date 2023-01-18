part of 'transaction_details_bloc.dart';

@freezed
class TransactionDetailsState with _$TransactionDetailsState {
  const factory TransactionDetailsState({
    @Default(PageState.initial) PageState pageState,
    required TransactionDetailsData transactionDetailsData,
    required ScanQrCodeResultData qrCodeData,
    String? callback,
    PageCommand? command,
  }) = _TransactionDetailsState;
}
