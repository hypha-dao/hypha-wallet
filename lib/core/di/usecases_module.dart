part of 'di_setup.dart';

void _registerUseCasesModule() {
  _registerFactory(() => CheckAccountAvailabilityUseCase(_getIt<UserAccountRepository>()));
  _registerFactory(() => FindAvailableAccountUseCase(_getIt<UserAccountRepository>()));
  _registerFactory(() => CreateAccountUseCase(_getIt<AuthRepository>()));
  _registerFactory(() => ParseQRCodeUseCase());
  _registerFactory(() => GenerateKeyFromSeedsPassportWordsUseCase(_getIt<CryptoAuthService>()));
  _registerFactory(() => GenerateKeyFromRecoveryWordsUseCase(_getIt<CryptoAuthService>()));
  _registerFactory(() => FindAccountsUseCase(_getIt<EOSClient>()));
  _registerFactory(() => ValidateKeyUseCase());
  _registerFactory(() => SignTransactionUseCase(_getIt<EOSService>(), _getIt<HyphaSharedPrefs>()));
}
