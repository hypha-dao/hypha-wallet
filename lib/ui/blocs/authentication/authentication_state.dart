part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticated(
    AuthenticationStatus authenticationStatus,
    AuthenticatedData authenticatedData,
  ) = _Authenticated;

  const factory AuthenticationState.unAuthenticated({
    @Default(AuthenticationStatus.unauthenticated) AuthenticationStatus authenticationStatus,
  }) = _UnAuthenticated;

  const factory AuthenticationState.unknown({
    @Default(AuthenticationStatus.unknown) AuthenticationStatus authenticationStatus,
  }) = _Unknown;
}
