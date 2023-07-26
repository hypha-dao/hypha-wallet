part of 'create_account_bloc.dart';

@freezed
class CreateAccountState with _$CreateAccountState {
  const factory CreateAccountState({
    @Default(PageState.initial) PageState pageState,
    XFile? image,
    required String userName,
    required Network network,
    String? userAccount,
    PageCommand? command,
  }) = _CreateAccountState;
}
