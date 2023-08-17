part of 'di_setup.dart';

void _registerUseCasesModule() {
  _registerFactory(() => CheckAccountAvailabilityUseCase(_getIt<UserAccountRepository>()));
  _registerFactory(() => FindAvailableAccountUseCase(_getIt<UserAccountRepository>()));
  _registerFactory(() => CreateAccountUseCase(_getIt<AuthRepository>(), _getIt<InviteService>()));
  _registerFactory(() => FetchProfileUseCase(
        _getIt<ProfileService>(),
        _getIt<HyphaSharedPrefs>(),
        _getIt<DaoService>(),
      ));
  _registerFactory(() => GenerateKeyFromSeedsPassportWordsUseCase(_getIt<CryptoAuthService>()));
  _registerFactory(() => GenerateKeyFromRecoveryWordsUseCase(_getIt<CryptoAuthService>()));
  _registerFactory(() => FindAccountsUseCase(
        _getIt<RemoteConfigService>(),
        _getIt<GetUserProfilesFromAccountsUseCase>(),
      ));
  _registerFactory(() => ValidateKeyUseCase());
  _registerFactory(() => SignTransactionUseCase(
        _getIt<EOSService>(),
        _getIt<AuthRepository>(),
        _getIt<SignTransactionCallbackService>(),
      ));
  _registerFactory(() => FreeTransactionUseCase(
        _getIt<PayForCpuService>(),
      ));
  _registerFactory(() => ParseQRCodeUseCase(_getIt<AuthRepository>(), _getIt<FreeTransactionUseCase>()));

  _registerFactory(
    () => GetTransactionHistoryUseCase(
      _getIt<TransactionHistoryRepository>(),
      _getIt<AuthRepository>(),
    ),
  );
  _registerFactory(() => GetAllTokensUseCase(
        _getIt<FirebaseDatabaseService>(),
        _getIt<AuthRepository>(),
      ));
  _registerFactory(() => GetTokenBalanceUseCase(_getIt<AuthRepository>(), _getIt<TokenService>()));
  _registerFactory(() => AddTokenToUserUseCase(
        _getIt<FirebaseDatabaseService>(),
        _getIt<AuthRepository>(),
      ));
  _registerFactory(() => RemoveTokenFromUserUseCase(
        _getIt<FirebaseDatabaseService>(),
        _getIt<AuthRepository>(),
      ));
  _registerFactory(
    () => GetUserTokensUseCase(
      _getIt<FirebaseDatabaseService>(),
      _getIt<AuthRepository>(),
      _getIt<TokenService>(),
    ),
  );
  _registerFactory(() => SetNameUseCase(_getIt<AmplifyService>(), _getIt<ProfileLoginUseCase>()));
  _registerFactory(() => SetImageUseCase(_getIt<AmplifyService>(), _getIt<ProfileLoginUseCase>()));
  _registerFactory(() => SetBioUseCase(_getIt<AmplifyService>(), _getIt<ProfileLoginUseCase>()));
  _registerFactory(() => RemoveAvatarUseCase(_getIt<AmplifyService>(), _getIt<ProfileLoginUseCase>()));
  _registerFactory(() => DeleteAccountUseCase(_getIt<AmplifyService>(), _getIt<AuthRepository>()));
  _registerFactory(() => PPPSignUpUseCase(_getIt<AmplifyService>()));
  _registerFactory(() => ProfileLoginUseCase(_getIt<AmplifyService>()));
  _registerFactory(() => InitializeProfileUseCase(_getIt<AmplifyService>()));
  _registerFactory(() => SearchForMemberUseCase(
        _getIt<UserAccountRepository>(),
        _getIt<GetUserProfilesFromAccountsUseCase>(),
      ));
  _registerFactory(() => GetUserProfilesFromAccountsUseCase(_getIt<ProfileService>()));
  _registerFactory(() => SendTokenUseCase(
        _getIt<EOSService>(),
        _getIt<AuthRepository>(),
      ));
  _registerFactory(() => GetTransactionHistoryDataUseCase(
        _getIt<GetTransactionHistoryUseCase>(),
        _getIt<FirebaseDatabaseService>(),
        _getIt<AuthRepository>(),
      ));
}
