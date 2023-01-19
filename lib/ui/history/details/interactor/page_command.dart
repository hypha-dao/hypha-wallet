part of 'transaction_detail_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToTransactionDetails() = _NavigateToTransactionDetails;
}
