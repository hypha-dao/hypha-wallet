part of 'bottom_navigation_bloc.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const BottomNavigationState._();

  const factory BottomNavigationState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
    @Default([]) List<BottomNavigationPage> allPages,
    @Default(BottomNavigationPage.home) BottomNavigationPage selectedPage,
  }) = _BottomNavigationState;

  int get indexOfSelected => allPages.indexOf(selectedPage);
}
