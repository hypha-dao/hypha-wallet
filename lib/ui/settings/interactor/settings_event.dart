part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.initial() = _Initial;
  const factory SettingsEvent.onThemeChanged() = _OnThemeChanged;
  const factory SettingsEvent.clearPageCommand() = _ClearPageCommand;
  const factory SettingsEvent.onSecureAccountTapped() = _OnSecureAccountTapped;
}
