part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    @Default(Unknown()) AuthenticationStatus authStatus,
    UserProfileData? userProfileData,
    UserAuthData? userAuthData,
  }) = _AuthenticationState;
}
