part of 'di_setup.dart';

Future<void> _registerServicesModule() async {
  // Remote config service w/ endpoint URLs etc
  final remoteConfigService = await RemoteConfigService.initialized();
  _registerLazySingleton(() => remoteConfigService);

  /// DIO
  _registerLazySingleton(() => Dio());

  // TODO(n13): Only remaining hard-coded reference to Telos - I guess we can't create NetworkingManager with base URL since the base URL depends on the network?
  _registerLazySingleton(() => NetworkingManager(_getIt<RemoteConfigService>().baseUrl(network: Network.telos)));

  /// Secure Storage
  _registerLazySingleton(() => const FlutterSecureStorage());
  _registerLazySingleton(() => SecureStorageService(_getIt<FlutterSecureStorage>()));

  /// Services
  _registerLazySingleton(() => UserAccountService(
      networkingManager: _getIt<NetworkingManager>(), remoteConfigService: _getIt<RemoteConfigService>()));
  _registerLazySingleton(() => TransactionHistoryService(_getIt<NetworkingManager>()));
  _registerLazySingleton(() => TokenService(_getIt<NetworkingManager>()));
  _registerLazySingleton(() => HyphaMemberService(_getIt<NetworkingManager>(), _getIt<RemoteConfigService>()));
  _registerLazySingleton(() => SignTransactionCallbackService(
        _getIt<NetworkingManager>(),
      ));
  _registerLazySingleton(() => DaoService(_getIt<NetworkingManager>(), _getIt<RemoteConfigService>()));

  _registerLazySingleton(() => CryptoAuthService());

  _registerLazySingleton(() => EOSService(_getIt<SecureStorageService>(), _getIt<RemoteConfigService>()));

  _registerLazySingleton(() => InviteService(_getIt<EOSService>(), _getIt<NetworkingManager>()));

  final amplifyService = AmplifyService(_getIt<EOSService>(), _getIt<NetworkingManager>());
  _registerLazySingleton(() => amplifyService);

  _registerLazySingleton<PermissionService>(() => PermissionServiceImplementation());

  _registerLazySingleton<ProfileService>(() => ProfileService(_getIt<RemoteConfigService>()));
}
