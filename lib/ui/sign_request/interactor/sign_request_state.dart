part of 'sign_request_bloc.dart';

@freezed
class SignRequestState with _$SignRequestState {
  const factory SignRequestState({
    @Default(PageState.initial) PageState pageState,
    @Default(ThemeMode.dark) ThemeMode themeMode,
    @Default(true) bool showSecurityNotification,
    PageCommand? command,
  }) = _SignRequestState;
}
