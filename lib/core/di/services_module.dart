part of 'di_setup.dart';

Future<void> _registerServicesModule() async {
  /// DIO
  _registerLazySingleton(() => Dio());
  _registerLazySingleton(() => NetworkingManager(GetIt.I<RemoteConfigService>().baseUrl()));

  /// Secure Storage
  _registerLazySingleton(() => const FlutterSecureStorage());
  _registerLazySingleton(() => SecureStorageService(_getIt<FlutterSecureStorage>()));

  /// Services
  _registerLazySingleton(() => UserAccountService(networkingManager: _getIt<NetworkingManager>()));
  _registerLazySingleton(() => TransactionHistoryService(_getIt<NetworkingManager>()));

  _registerLazySingleton(() => CryptoAuthService());

  _registerLazySingleton(
      () => EOSClient(baseUrl: GetIt.I<RemoteConfigService>().pushTransactionNodeUrl(), version: 'v1'));
  _registerLazySingleton(() => EOSService(_getIt<EOSClient>(), _getIt<SecureStorageService>()));

  _registerLazySingleton<PermissionService>(() => PermissionServiceImplementation());

  _registerLazySingleton<ProfileService>(() => ProfileService());
}
