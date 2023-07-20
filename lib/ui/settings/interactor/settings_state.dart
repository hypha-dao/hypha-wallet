part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(PageState.success) PageState pageState,
    @Default(ThemeMode.dark) ThemeMode themeMode,
    @Default(true) bool showSecurityNotification,
    @Default(false) bool hasWords,
    String? appName,
    String? packageName,
    String? buildNumber,
    String? version,
    PageCommand? command,
  }) = _SettingsState;
}
