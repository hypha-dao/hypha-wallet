part of 'sign_transaction_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToTransactionSuccess(SignSuccessTransactionType type) =
      _NavigateToTransactionSuccess;
  const factory PageCommand.navigateToTransactionFailed() = _NavigateToTransactionFailed;
}
