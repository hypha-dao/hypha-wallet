part of 'di_setup.dart';

void _registerUseCasesModule() {
  _registerFactory(() => CheckAccountAvailabilityUseCase(_getIt<UserAccountRepository>()));
  _registerFactory(() => FindAvailableAccountUseCase(_getIt<UserAccountRepository>()));
  _registerFactory(() => CreateAccountUseCase(_getIt<AuthRepository>()));
  _registerFactory(() => ParseQRCodeUseCase(_getIt<HyphaSharedPrefs>()));
  _registerFactory(() => FetchProfileUseCase(_getIt<ProfileService>(), _getIt<HyphaSharedPrefs>()));
  _registerFactory(() => GenerateKeyFromSeedsPassportWordsUseCase(_getIt<CryptoAuthService>()));
  _registerFactory(() => GenerateKeyFromRecoveryWordsUseCase(_getIt<CryptoAuthService>()));
  _registerFactory(() => FindAccountsUseCase(_getIt<ProfileService>(), _getIt<RemoteConfigService>()));
  _registerFactory(() => ValidateKeyUseCase());
  _registerFactory(() => SignTransactionUseCase(_getIt<EOSService>(), _getIt<HyphaSharedPrefs>()));
  _registerFactory(
    () => GetTransactionHistoryUseCase(
      _getIt<TransactionHistoryRepository>(),
      _getIt<HyphaSharedPrefs>(),
    ),
  );
  _registerFactory(() => SetNameUseCase(_getIt<AmplifyService>()));
  _registerFactory(() => SetImageUseCase(_getIt<AmplifyService>()));
  _registerFactory(() => SetBioUseCase(_getIt<AmplifyService>()));
  _registerFactory(() => PPPSignUpUseCase(_getIt<AmplifyService>()));
  _registerFactory(() => ProfileLoginUseCase(_getIt<AmplifyService>()));
  _registerFactory(() => InitializeProfileUseCase(_getIt<AmplifyService>()));
}
