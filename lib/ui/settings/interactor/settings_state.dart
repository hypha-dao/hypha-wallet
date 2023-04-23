part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(PageState.success) PageState pageState,
    @Default(ThemeMode.dark) ThemeMode themeMode,
    @Default(true) bool showSecurityNotification,
    @Default(false) bool hasWords,
    PageCommand? command,
  }) = _SettingsState;
}
