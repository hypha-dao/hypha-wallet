part of 'search_user_bloc.dart';

@freezed
class SearchUserEvent with _$SearchUserEvent {
  const factory SearchUserEvent.initial() = _Initial;
  const factory SearchUserEvent.onRefresh() = _OnRefresh;
  const factory SearchUserEvent.clearPageCommand() = _ClearPageCommand;
  const factory SearchUserEvent.onSearchQueryChanged(String query) = _OnSearchQueryChanged;
  const factory SearchUserEvent.onClearIconTapped() = _OnClearIconTapped;
}
