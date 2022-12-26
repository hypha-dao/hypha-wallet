part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(PageState.initial) PageState pageState,
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(true) bool showSecurityNotification,
    PageCommand? command,
  }) = _SettingsState;
}
