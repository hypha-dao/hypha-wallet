part of 'di_setup.dart';

Future<void> _registerSharedPreferencesModule() async {
  final appSharedPrefs = HyphaSharedPrefs(RxSharedPreferences(await SharedPreferences.getInstance()));
  // Rx Shared Preferences
  _getIt.registerLazySingleton(() => appSharedPrefs);
}
