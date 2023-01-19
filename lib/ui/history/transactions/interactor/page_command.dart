part of 'transactions_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToTransactionDetails() = _NavigateToTransactionDetails;
}
