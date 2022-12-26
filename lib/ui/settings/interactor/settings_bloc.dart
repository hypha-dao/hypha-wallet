import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';

part 'page_command.dart';
part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final HyphaSharedPrefs _sharedPrefs;

  SettingsBloc(this._sharedPrefs) : super(SettingsState()) {
    on<_Initial>(_initial);
    on<_OnThemeChanged>(_onThemeChanged);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  Future<void> _initial(_Initial event, Emitter<SettingsState> emit) async {
    final theme = await _sharedPrefs.getTheme();
    final showSecurityNotification = await _sharedPrefs.getSecurityNotification();

    emit(state.copyWith(themeMode: theme, showSecurityNotification: showSecurityNotification));
  }

  void _onThemeChanged(_OnThemeChanged event, Emitter<SettingsState> emit) {
    _sharedPrefs.setTheme(state.themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
    emit(state.copyWith(themeMode: state.themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark));
  }
}
