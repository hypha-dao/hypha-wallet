part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.initial() = _InitialAuthentication;

  const factory AuthenticationEvent.authenticationStatusChanged(AuthenticationStatus status) =
      _AuthenticationStatusChanged;

  const factory AuthenticationEvent.onFCMTokenChanged(String token) = _OnFCMTokenChanged;

  const factory AuthenticationEvent.authenticationLogoutRequested() = _AuthenticationLogoutRequested;

  const factory AuthenticationEvent.onUserProfileDataChanged(UserProfileData data) = _OnAuthenticatedDataChanged;
}
