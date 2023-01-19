part of 'transaction_detail_bloc.dart';

@freezed
class TransactionDetailState with _$TransactionDetailState {
  const factory TransactionDetailState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
  }) = _TransactionDetailState;
}
