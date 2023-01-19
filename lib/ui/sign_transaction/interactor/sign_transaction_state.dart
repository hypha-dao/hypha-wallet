part of 'sign_transaction_bloc.dart';

@freezed
class SignTransactionState with _$SignTransactionState {
  const factory SignTransactionState({
    @Default(PageState.initial) PageState pageState,
    required TransactionDetailsData transactionDetailsData,
    required ScanQrCodeResultData qrCodeData,
    String? callback,
    PageCommand? command,
  }) = _SignTransactionState;
}
