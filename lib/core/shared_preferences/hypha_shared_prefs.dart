import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/models/authenticated_data.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

enum LocalStorageValue {
  /// Storage Keys
  authenticatedData('Qc_keyAuthData', 0),

  /// Theme
  selectedTheme('Qc_keyTheme', 0);

  final String _key;
  final int version;

  String get key => version > 0 ? '${_key}_v$version' : _key;

  const LocalStorageValue(this._key, this.version);
}

class HyphaSharedPrefs {
  final RxSharedPreferences _prefs;

  const HyphaSharedPrefs(this._prefs);

  Future<void> remove(String key) => _prefs.remove(key);

  /// Clear all storage data.
  Future<void> clear() async => _prefs.clear();
}

extension SharedPrefsExtensions on HyphaSharedPrefs {
  /// Save auth user data
  Future<void> setAuthenticatedData(AuthenticatedData data) =>
      _prefs.setString(LocalStorageValue.authenticatedData.key, jsonEncode(data));

  /// Get profile user
  Future<AuthenticatedData?> getAuthenticatedData() async {
    final String? profile = await _prefs.getString(LocalStorageValue.authenticatedData.key);
    return profile == null ? null : AuthenticatedData.fromJson(jsonDecode(profile));
  }

  /// Watch profile user
  Stream<AuthenticatedData?> watchProfile() {
    return _prefs
        .getStringStream(LocalStorageValue.authenticatedData.key)
        .map((data) => data == null ? null : AuthenticatedData.fromJson(jsonDecode(data)));
  }

  /// Save App Theme.
  Future<void> setTheme(ThemeMode theme) => _prefs.setString(LocalStorageValue.selectedTheme.key, theme.name);

  /// Get App Theme.
  Future<ThemeMode> getTheme() async {
    final String? theme = await _prefs.getString(LocalStorageValue.selectedTheme.key);
    return ThemeMode.values.singleWhere((t) => t.name == theme, orElse: () => ThemeMode.system);
  }
}
