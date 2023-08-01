part of 'edit_account_bloc.dart';

@freezed
class EditAccountState with _$EditAccountState {
  const EditAccountState._();

  const factory EditAccountState({
    @Default(PageState.initial) PageState pageState,
    XFile? image,
    required String userName,
    required Network network,
    String? userAccount,
    PageCommand? command,
    @Default([]) List<UserAccountRequirement> userAccountRequirements,
  }) = _CreateAccountState;

  bool get isNextButtonAvailable =>
      userAccountRequirements.firstWhereOrNull((item) => item.state != RequirementState.completed) == null;
}
