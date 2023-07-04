part of 'search_user_bloc.dart';

@freezed
class SearchUserState with _$SearchUserState {
  const SearchUserState._();

  const factory SearchUserState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
  }) = _SearchUserState;
}
