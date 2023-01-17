part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(PageState.initial) PageState pageState,
    @Default(false) bool isLoading,
    PageCommand? command,
  }) = _HomeState;
}
