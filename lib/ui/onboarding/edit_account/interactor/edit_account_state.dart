part of 'edit_account_bloc.dart';

@freezed
class EditAccountState with _$EditAccountState {
  const factory EditAccountState({
    @Default(PageState.initial) PageState pageState,
    XFile? image,
    required String userName,
    String? userAccount,
    PageCommand? command,
    @Default([]) List<UserAccountRequirement> userAccountRequirements,
  }) = _CreateAccountState;
}
