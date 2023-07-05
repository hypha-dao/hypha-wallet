part of 'search_user_bloc.dart';

@freezed
class SearchUserState with _$SearchUserState {
  const SearchUserState._();

  const factory SearchUserState({
    @Default(PageState.initial) PageState pageState,
    @Default([]) List<UserProfileData> users,
    @Default('') String searchQuery,
    @Default(false) bool showClearIcon,
    PageCommand? command,
  }) = _SearchUserState;
}
