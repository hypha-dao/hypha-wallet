part of 'di_setup.dart';

Future<void> _registerServicesModule() async {
  // Remote config service w/ endpoint URLs etc
  final remoteConfigService = await RemoteConfigService.initialized();
  _registerLazySingleton(() => remoteConfigService);

  final amplifyService = await AmplifyService.initialized();
  _registerLazySingleton(() => amplifyService);

  /// DIO
  _registerLazySingleton(() => Dio());
  _registerLazySingleton(() => NetworkingManager(_getIt<RemoteConfigService>().baseUrl()));

  /// Secure Storage
  _registerLazySingleton(() => const FlutterSecureStorage());
  _registerLazySingleton(() => SecureStorageService(_getIt<FlutterSecureStorage>()));

  /// Services
  _registerLazySingleton(() => UserAccountService(
      networkingManager: _getIt<NetworkingManager>(), remoteConfigService: _getIt<RemoteConfigService>()));
  _registerLazySingleton(() => TransactionHistoryService(_getIt<NetworkingManager>()));

  _registerLazySingleton(() => CryptoAuthService());

  _registerLazySingleton(() => EOSService(_getIt<SecureStorageService>(), _getIt<RemoteConfigService>()));

  _registerLazySingleton<PermissionService>(() => PermissionServiceImplementation());

  _registerLazySingleton<ProfileService>(() => ProfileService(_getIt<RemoteConfigService>()));
}
