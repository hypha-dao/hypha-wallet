part of 'di_setup.dart';

void _registerBlocsModule() {
  /// Global Blocs
  _registerFactory(() => AuthenticationBloc(
        _getIt<AuthRepository>(),
        _getIt<HyphaSharedPrefs>(),
        _getIt<SecureStorageService>(),
        _getIt<FirebasePushNotificationsService>(),
        _getIt<FirebaseDatabaseService>(),
      ));
  _registerFactory(() => DeeplinkBloc(
        _getIt<ParseQRCodeUseCase>(),
        _getIt<AuthRepository>(),
        _getIt<ErrorHandlerManager>(),
      ));
  _registerFactory(() => ErrorHandlerBloc(_getIt<ErrorHandlerManager>()));
  _registerFactory(() => SettingsBloc(
        _getIt<HyphaSharedPrefs>(),
        _getIt<SecureStorageService>(),
        _getIt<DeleteAccountUseCase>(),
        _getIt<AuthRepository>(),
      ));

  /// Views Blocs
  _registerFactory(() => HomeBloc(
        _getIt<ParseQRCodeUseCase>(),
        _getIt<ErrorHandlerManager>(),
        _getIt<FirebasePushNotificationsService>(),
      ));
  _registerFactory(() => ImportAccountBloc(
        _getIt<GenerateKeyFromRecoveryWordsUseCase>(),
        _getIt<ValidateKeyUseCase>(),
        _getIt<ErrorHandlerManager>(),
        _getIt<FindAccountsUseCase>(),
        _getIt<AuthRepository>(),
      ));
  _registerFactory(() => BottomNavigationBloc(_getIt<RemoteConfigService>()));
  _registerFactory(() => ProfileBloc(
        _getIt<FetchProfileUseCase>(),
        _getIt<AuthRepository>(),
        _getIt<SetNameUseCase>(),
        _getIt<SetImageUseCase>(),
        _getIt<SetBioUseCase>(),
        _getIt<ErrorHandlerManager>(),
        _getIt<RemoveAvatarUseCase>(),
      ));
  _registerFactoryWithParams<SignTransactionBloc, ScanQrCodeResultData, void>(
    (qrCodeData, _) => SignTransactionBloc(_getIt<SignTransactionUseCase>(), qrCodeData),
  );
  _registerFactory(() => TransactionsBloc(
        _getIt<GetTransactionHistoryUseCase>(),
        _getIt<ErrorHandlerManager>(),
      ));
  _registerFactory(() => TransactionDetailBloc());

  _registerFactory(() => WalletBloc(
        _getIt<ErrorHandlerManager>(),
        _getIt<GetUserTokensUseCase>(),
        _getIt<GetTransactionHistoryDataUseCase>(),
      ));

  _registerFactory(() => TokensSettingsBloc(
        _getIt<GetAllTokensUseCase>(),
        _getIt<RemoveTokenFromUserUseCase>(),
        _getIt<AddTokenToUserUseCase>(),
      ));

  _registerFactoryWithParams<TokenDetailsBloc, WalletTokenData, void>(
    (tokenData, _) => TokenDetailsBloc(
      _getIt<RemoveTokenFromUserUseCase>(),
      _getIt<AddTokenToUserUseCase>(),
      _getIt<GetTokenBalanceUseCase>(),
      _getIt<ErrorHandlerManager>(),
      _getIt<GetTransactionHistoryDataUseCase>(),
      tokenData,
    ),
  );

  _registerFactoryWithParams<CreateAccountBloc, XFile?, String>(
    (image, userName) => CreateAccountBloc(
      _getIt<CryptoAuthService>(),
      _getIt<CreateAccountUseCase>(),
      _getIt<FindAvailableAccountUseCase>(),
      _getIt<ErrorHandlerManager>(),
      image,
      userName,
    ),
  );

  _registerFactoryWithParams<EditAccountBloc, PageParams, void>(
    (pageParams, _) => EditAccountBloc(
      _getIt<CheckAccountAvailabilityUseCase>(),
      _getIt<CreateAccountUseCase>(),
      _getIt<ErrorHandlerManager>(),
      _getIt<CryptoAuthService>(),
      pageParams,
    ),
  );

  _registerFactoryWithParams<SendBloc, UserProfileData, WalletTokenData>(
    (pageParams, tokenData) => SendBloc(
      pageParams,
      tokenData,
      _getIt<SendTokenUseCase>(),
      _getIt<ErrorHandlerManager>(),
    ),
  );

  _registerFactoryWithParams<JoinDaoBloc, InviteLinkData, void>(
    (inviteLinkData, _) => JoinDaoBloc(
      _getIt<AuthRepository>(),
      _getIt<InviteService>(),
      _getIt<ErrorHandlerManager>(),
      _getIt<GetDaoNameUseCase>(),
      inviteLinkData,
    ),
  );

  _registerFactoryWithParams<ReceiveBloc, WalletTokenData, void>(
    (tokenData, _) => ReceiveBloc(tokenData, _getIt<SendTokenUseCase>()),
  );

  _registerFactory(
    () => PushNotificationsBloc(
      _getIt<FirebasePushNotificationsService>(),
      _getIt<ParseQRCodeUseCase>(),
      _getIt<FirebaseAnalyticsService>(),
    ),
  );

  _registerFactory(() => SearchUserBloc(
        _getIt<SearchForMemberUseCase>(),
        _getIt<AuthRepository>(),
      ));

  _registerFactory(() => ProposalsBloc(
    _getIt<GetProposalsUseCase>(),
    _getIt<ErrorHandlerManager>(),
  ));
}