import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';

part 'page_command.dart';
part 'sign_request_bloc.freezed.dart';
part 'sign_request_event.dart';
part 'sign_request_state.dart';

class SignRequestBloc extends Bloc<SignRequestEvent, SignRequestState> {
  final HyphaSharedPrefs _sharedPrefs;

  SignRequestBloc(this._sharedPrefs) : super(const SignRequestState()) {
    on<_Initial>(_initial);
    on<_OnThemeChanged>(_onThemeChanged);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
    on<_OnSecureAccountTapped>(_onSecureAccountTapped);
  }

  Future<void> _initial(_Initial event, Emitter<SignRequestState> emit) async {
    final theme = await _sharedPrefs.getTheme();
    final showSecurityNotification = await _sharedPrefs.getShowSecurityNotification();

    emit(state.copyWith(themeMode: theme, showSecurityNotification: showSecurityNotification));
  }

  void _onThemeChanged(_OnThemeChanged event, Emitter<SignRequestState> emit) {
    _sharedPrefs.setTheme(state.themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
    emit(state.copyWith(themeMode: state.themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark));
  }

  FutureOr<void> _onSecureAccountTapped(_OnSecureAccountTapped event, Emitter<SignRequestState> emit) {
    _sharedPrefs.setShowSecurityNotification(false);
    emit(state.copyWith(showSecurityNotification: false));
  }
}
