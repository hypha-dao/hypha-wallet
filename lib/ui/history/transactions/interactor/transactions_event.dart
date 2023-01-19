part of 'transactions_bloc.dart';

@freezed
class TransactionsEvent with _$TransactionsEvent {
  const factory TransactionsEvent.initial() = _Initial;
  const factory TransactionsEvent.clearPageCommand() = _ClearPageCommand;
}
