part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
  }) = _HomeState;
}
