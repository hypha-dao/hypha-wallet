part of 'transaction_details_bloc.dart';

@freezed
class TransactionDetailsEvent with _$TransactionDetailsEvent {
  const factory TransactionDetailsEvent.initial() = _Initial;
  const factory TransactionDetailsEvent.onUserSlideCompleted() = _OnUserSlideCompleted;
  const factory TransactionDetailsEvent.onUserSlideCanceled() = _OnUserSlideCanceled;
  const factory TransactionDetailsEvent.onCancelTransactionTapped() = _OnCancelTransactionTapped;
  const factory TransactionDetailsEvent.clearPageCommand() = _ClearPageCommand;
}
