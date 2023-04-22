import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/local/services/secure_storage_service.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/settings/usecases/delete_account_use_case.dart';

part 'page_command.dart';
part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final HyphaSharedPrefs _sharedPrefs;
  final SecureStorageService _secureStorageService;
  final DeleteAccountUseCase _deleteAccountUseCase;

  SettingsBloc(this._sharedPrefs, this._secureStorageService, this._deleteAccountUseCase)
      : super(const SettingsState()) {
    on<_Initial>(_initial);
    on<_OnThemeChanged>(_onThemeChanged);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
    on<_OnSecureAccountTapped>(_onSecureAccountTapped);
    on<_OnDeleteAccountTapped>(_onDeleteAccountTapped);
    on<_OnShowSettings>(_onShowSettings);
  }

  Future<void> _initial(_Initial event, Emitter<SettingsState> emit) async {
    final theme = await _sharedPrefs.getTheme();
    final bool showSecurityNotification = await _sharedPrefs.getShowSecurityNotification();

    emit(state.copyWith(
        themeMode: theme, showSecurityNotification: showSecurityNotification, pageState: PageState.success));
  }

  void _onThemeChanged(_OnThemeChanged event, Emitter<SettingsState> emit) {
    _sharedPrefs.setTheme(state.themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
    emit(state.copyWith(themeMode: state.themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark));
  }

  FutureOr<void> _onSecureAccountTapped(_OnSecureAccountTapped event, Emitter<SettingsState> emit) {
    _sharedPrefs.setShowSecurityNotification(false);
    emit(state.copyWith(showSecurityNotification: false));
  }

  FutureOr<void> _onDeleteAccountTapped(_OnDeleteAccountTapped event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));
    final accountName = (await _sharedPrefs.getUserProfileData())?.accountName;
    if (accountName != null) {
      await _deleteAccountUseCase.run(accountName);
    }
    // TODO - log out user
    emit(state.copyWith(pageState: PageState.success));
  }

  FutureOr<void> _onShowSettings(_OnShowSettings event, Emitter<SettingsState> emit) async {
    if (state.showSecurityNotification) {
      // ignore: unawaited_futures
      _sharedPrefs.setShowSecurityNotification(false);
      final UserAuthData? authData = await _secureStorageService.getUserAuthData();
      final hasWords = authData?.words.isNotEmpty == true;
      late PageCommand pageCommand;
      if (hasWords) {
        pageCommand = PageCommand.showSecurityPopup(
          title: 'Security alert',
          subtitle: 'Backup your 12 secret words',
          rationale:
              'Never share your 12 secret words. Anyone with your secret words can access to your Hypha account and your funds.',
          mainButtonText: 'VIEW 12 WORDS',
          image: 'assets/images/shield.png',
          privateKey: authData!.eOSPrivateKey.toString(),
          words: authData.words,
        );
      } else {
        pageCommand = PageCommand.showSecurityPopup(
          title: 'Security alert',
          subtitle: 'Keep your Private Key safe',
          rationale:
              'Never share your private key. Anyone with your private key can access to your Hypha account and your funds.',
          mainButtonText: 'VIEW PRIVATE KEY',
          image: 'assets/images/shield.png',
          privateKey: authData!.eOSPrivateKey.toString(),
          words: authData.words,
        );
      }

      emit(state.copyWith(command: pageCommand, hasWords: hasWords, showSecurityNotification: false));
    }
  }
}
