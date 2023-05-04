import 'dart:async';

import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

import 'mock_shared_preferences.dart';

class MockHyphaPreferences extends HyphaSharedPrefs {
  MockHyphaPreferences(super.prefs);
  // ignore: prefer_constructors_over_static_methods
  static MockHyphaPreferences instance() {
    // FutureOr<SharedPreferences> p = Future.delayed(Duration(milliseconds: 1), () => MockSharedPreferences());
    return MockHyphaPreferences(RxSharedPreferences(Future.value(MockSharedPreferences())));
  }
}
