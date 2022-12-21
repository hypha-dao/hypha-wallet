import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/models/authenticated_data.dart';
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
  late StreamSubscription<AuthenticationStatus> _authenticationStatusSubscription;
  late StreamSubscription<AuthenticatedData?> _authSubscription;

  AuthenticationBloc(
    this._authRepository,
    this._appSharedPrefs,
  ) : super(const AuthenticationState.unknown()) {
    on<_InitialAuthentication>(_initial);
    on<_AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<_AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
    on<_OnAuthenticatedDataChanged>(_onAuthenticatedDataChanged);
    _authenticationStatusSubscription = _authRepository.status.listen(
      (status) => add(AuthenticationEvent.authenticationStatusChanged(status)),
    );

    _authSubscription = _appSharedPrefs.watchProfile().listen((AuthenticatedData? profile) {
      if (profile != null) {
        add(AuthenticationEvent.onAuthenticatedDataChanged(profile));
      }
    });
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    _authSubscription.cancel();
    return super.close();
  }

  FutureOr<void> _initial(_InitialAuthentication event, Emitter<AuthenticationState> emit) async {
    try {
      var authData = await _appSharedPrefs.getAuthenticatedData();
      if (authData != null) {
        emit(AuthenticationState.authenticated(AuthenticationStatus.authenticated, authData));
      } else {
        emit(const AuthenticationState.unAuthenticated());
      }
    } catch (error, stacktrace) {
      LogHelper.e('Error during user sign-in status', error: error, stacktrace: stacktrace);
      emit(const AuthenticationState.unAuthenticated());
    }
  }

  void _onAuthenticationStatusChanged(
    _AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(const AuthenticationState.unAuthenticated());
      case AuthenticationStatus.authenticated:
        var authData = await _appSharedPrefs.getAuthenticatedData();
        if (authData != null) {
          return emit(AuthenticationState.authenticated(event.status, authData));
        } else {
          return emit(const AuthenticationState.unAuthenticated());
        }
      case AuthenticationStatus.unknown:
        return emit(const AuthenticationState.unknown());
    }
  }

  Future<void> _onAuthenticationLogoutRequested(
    _AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    // await _signOutUseCase.run();
  }

  FutureOr<void> _onAuthenticatedDataChanged(_OnAuthenticatedDataChanged event, Emitter<AuthenticationState> emit) {
    if (state is _Authenticated) {
      emit((state as _Authenticated).copyWith(authenticatedData: event.data));
    }
  }
}
