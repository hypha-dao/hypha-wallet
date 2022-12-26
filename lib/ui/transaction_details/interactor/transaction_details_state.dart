part of 'transaction_details_bloc.dart';

@freezed
class TransactionDetailsState with _$TransactionDetailsState {
  const factory TransactionDetailsState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
  }) = _TransactionDetailsState;
}
