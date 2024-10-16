part of 'sign_transaction_bloc.dart';

@freezed
class PageCommand with _$PageCommand {
  const factory PageCommand.navigateToTransactionSuccess(SignSuccessTransactionType type) =
      _NavigateToTransactionSuccess;
  const factory PageCommand.navigateToTransactionFailed(ErrorResult<String, HyphaError> errorResult) = _NavigateToTransactionFailed;
  const factory PageCommand.navigateAway() = _NavigateAway;
}
