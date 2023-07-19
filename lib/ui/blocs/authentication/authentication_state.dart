part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    @Default(UnAuthenticated()) AuthenticationStatus authStatus,
    UserProfileData? userProfileData,
    UserAuthData? userAuthData,
  }) = _AuthenticationState;
}
