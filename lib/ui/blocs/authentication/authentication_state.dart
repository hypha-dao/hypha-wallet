part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticated(
    AuthenticationStatus authenticationStatus,
    UserProfileData authenticatedData,
    UserAuthData userAuthData,
  ) = _Authenticated;

  const factory AuthenticationState.unAuthenticated({
    @Default(AuthenticationStatus.unauthenticated) AuthenticationStatus authenticationStatus,
    UserProfileData? authenticatedData,
    UserAuthData? userAuthData,
  }) = _UnAuthenticated;

  const factory AuthenticationState.unknown({
    @Default(AuthenticationStatus.unknown) AuthenticationStatus authenticationStatus,
    UserProfileData? authenticatedData,
    UserAuthData? userAuthData,
  }) = _Unknown;
}
