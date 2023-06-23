part of 'token_settings_bloc.dart';

@freezed
class TokensSettingsEvent with _$TokensSettingsEvent {
  const factory TokensSettingsEvent.initial() = _Initial;
  const factory TokensSettingsEvent.clearPageCommand() = _ClearPageCommand;
  const factory TokensSettingsEvent.addTokenToUser(WalletTokenData token) = _AddTokenToUser;
  const factory TokensSettingsEvent.removeTokenToUser(WalletTokenData token) = _RemoveTokenToUser;

}
