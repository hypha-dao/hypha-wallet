part of 'transaction_detail_bloc.dart';

@freezed
class TransactionDetailEvent with _$TransactionDetailEvent {
  const factory TransactionDetailEvent.initial() = _Initial;
  const factory TransactionDetailEvent.clearPageCommand() = _ClearPageCommand;
}
