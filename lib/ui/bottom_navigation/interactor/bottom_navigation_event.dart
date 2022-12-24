part of 'bottom_navigation_bloc.dart';

@freezed
class BottomNavigationEvent with _$BottomNavigationEvent {
  const factory BottomNavigationEvent.initial() = _Initial;
  const factory BottomNavigationEvent.clearPageCommand() = _ClearPageCommand;
  const factory BottomNavigationEvent.onPageSelected(int index) = _OnPageSelected;
}
