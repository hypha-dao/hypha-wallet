part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticated(
    UserProfileData authenticatedData,
    UserAuthData userAuthData,
  ) = _Authenticated;

  const factory AuthenticationState.unAuthenticated({
    UserProfileData? authenticatedData,
    UserAuthData? userAuthData,
  }) = _UnAuthenticated;

  const factory AuthenticationState.unknown({
    UserProfileData? authenticatedData,
    UserAuthData? userAuthData,
  }) = _Unknown;
}
