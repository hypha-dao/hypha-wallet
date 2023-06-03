part of 'token_settings_bloc.dart';

@freezed
class TokensSettingsState with _$TokensSettingsState {
  const TokensSettingsState._();

  const factory TokensSettingsState({
    @Default(PageState.initial) PageState pageState,
    PageCommand? command,
    @Default([]) List<SettingsTokenData> tokens,
  }) = _TokensSettingsState;
}
