part of 'di_setup.dart';

void _registerRepositoriesModule() {
  _registerLazySingleton(() => AuthRepository(
        _getIt<HyphaSharedPrefs>(),
        _getIt<UserAccountService>(),
        _getIt<SecureStorageService>(),
      ));
  _registerLazySingleton(() => UserAccountRepository(userService: _getIt<UserAccountService>()));
}
