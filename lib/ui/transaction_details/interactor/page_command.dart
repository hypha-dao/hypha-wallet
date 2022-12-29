part of 'transaction_details_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.transactionCancelled() = _TransactionCancelled;
  const factory PageCommand.navigateToTransactionSuccess() = _NavigateToTransactionSuccess;
  const factory PageCommand.navigateToTransactionFailed() = _NavigateToTransactionFailed;
}
