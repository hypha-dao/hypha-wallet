part of 'bottom_navigation_bloc.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
    @Default(0) int selectedPage,
  }) = _BottomNavigationState;
}
