part of 'transactions_bloc.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
  }) = _TransactionsState;
}
