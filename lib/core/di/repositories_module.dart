part of 'di_setup.dart';

void _registerRepositoriesModule() {
  _registerLazySingleton(() => ProfileUploadRepository(
        _getIt<HyphaSharedPrefs>(),
        _getIt<PPPSignUpUseCase>(),
        _getIt<ProfileLoginUseCase>(),
        _getIt<InitializeProfileUseCase>(),
        _getIt<SetImageUseCase>(),
      ));

  _registerLazySingleton(() => AuthRepository(
        _getIt<HyphaSharedPrefs>(),
        _getIt<UserAccountService>(),
        _getIt<SecureStorageService>(),
        _getIt<ProfileUploadRepository>(),
        _getIt<AmplifyService>(),
        _getIt<FirebasePushNotificationsService>(),
        _getIt<FirebaseDatabaseService>(),
      ));

  _registerLazySingleton(() => UserAccountRepository(userService: _getIt<UserAccountService>()));

  _registerLazySingleton(() => TransactionHistoryRepository(service: _getIt<TransactionHistoryService>()));
}
