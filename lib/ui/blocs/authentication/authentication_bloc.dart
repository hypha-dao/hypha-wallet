import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/firebase/firebase_push_notifications_service.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/local/services/secure_storage_service.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';

part 'authentication_bloc.freezed.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

/// AuthenticationBloc will handle all Auth things in the app. Logout/Login/CreateAccount/Etc
/// This is to be used as a top level Bloc
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthRepository _authRepository;
  final HyphaSharedPrefs _appSharedPrefs;
  final SecureStorageService _secureStorageService;
  final FirebasePushNotificationsService _firebasePushNotificationsService;
  final FirebaseDatabaseService _firebaseDatabaseService;
  late StreamSubscription<AuthenticationStatus> _authenticationStatusSubscription;
  late StreamSubscription<String> _firebaseFCMTokenSubscription;
  late StreamSubscription<UserProfileData?> _authSubscription;

  AuthenticationBloc(
    this._authRepository,
    this._appSharedPrefs,
    this._secureStorageService,
    this._firebasePushNotificationsService,
    this._firebaseDatabaseService,
  ) : super(const AuthenticationState()) {
    on<_InitialAuthentication>(_initial);
    on<_AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<_AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
    on<_OnAuthenticatedDataChanged>(_onAuthenticatedDataChanged);
    on<_AttemptToAuthenticate>(_attemptToAuthenticate);
    on<_OnFCMTokenChanged>(_onFCMTokenChanged);
    _authenticationStatusSubscription = _authRepository.status.listen(
      (status) => add(AuthenticationEvent.authenticationStatusChanged(status)),
    );

    _firebaseFCMTokenSubscription = _firebasePushNotificationsService.onFCMTokenRefresh.listen((event) {
      add(AuthenticationEvent.onFCMTokenChanged(event));
    });

    _authSubscription = _appSharedPrefs.watchProfile().listen((UserProfileData? profile) {
      if (profile != null) {
        add(AuthenticationEvent.onUserProfileDataChanged(profile));
      }
    });
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    _authSubscription.cancel();
    _firebaseFCMTokenSubscription.cancel();
    return super.close();
  }

  FutureOr<void> _initial(_InitialAuthentication event, Emitter<AuthenticationState> emit) async {
    try {
      final userProfileData = await _appSharedPrefs.getUserProfileData();
      final authData = await _secureStorageService.getUserAuthData();

      if (userProfileData != null && authData != null) {
        _authRepository.loginUser(userProfileData, authData);
      } else {
        await _authRepository.logOut(null);
      }
    } catch (error, stacktrace) {
      LogHelper.e('Error during user sign-in status', error: error, stacktrace: stacktrace);
      emit(state.copyWith(authStatus: const UnAuthenticated()));
    }
  }

  void _onAuthenticationStatusChanged(
    _AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.status) {
      case final UnAuthenticated s:
        return emit(state.copyWith(authStatus: s));
      case final Authenticated s:
        return emit(state.copyWith(
          authStatus: s,
          userProfileData: s.userProfileData,
          userAuthData: s.userAuthData,
        ));
      case final Unknown s:
        return emit(state.copyWith(authStatus: s));
    }
  }

  Future<void> _onAuthenticationLogoutRequested(
    _AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await state.userProfileData?.accountName.let((it) => _authRepository.logOut(it));
  }

  FutureOr<void> _onAuthenticatedDataChanged(
      _OnAuthenticatedDataChanged event, Emitter<AuthenticationState> emit) async {
    emit(state.copyWith(userProfileData: event.data));
    final token = await _firebasePushNotificationsService.getDeviceToken();
    if (token != null) {
      add(_OnFCMTokenChanged(token));
    }
  }

  FutureOr<void> _onFCMTokenChanged(_OnFCMTokenChanged event, Emitter<AuthenticationState> emit) {
    state.userProfileData?.let(
      (self) => _firebaseDatabaseService.saveDeviceToken(
        deviceToken: event.token,
        accountName: self.accountName,
      ),
    );
  }

  FutureOr<void> _attemptToAuthenticate(_AttemptToAuthenticate event, Emitter<AuthenticationState> emit) async {
    final userProfileData = await _appSharedPrefs.getUserProfileData();
    final authData = await _secureStorageService.getUserAuthData();
    if (userProfileData != null && authData != null) {
      _authRepository.loginUser(userProfileData, authData);
    }
  }
}
