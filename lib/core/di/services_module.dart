part of 'di_setup.dart';

Future<void> _registerServicesModule() async {
  /// DIO
  _registerLazySingleton(() => Dio());
  _registerLazySingleton(() => NetworkingManager(Endpoints.baseUrl));

  /// Secure Storage
  _registerLazySingleton(() => FlutterSecureStorage());
  _registerLazySingleton(() => SecureStorageService(_getIt<FlutterSecureStorage>()));

  /// Services
  _registerLazySingleton(() => UserAccountService(networkingManager: _getIt<NetworkingManager>()));
  _registerLazySingleton(() => CryptoAuthService());

  _registerLazySingleton(() => EOSClient(baseUrl: Endpoints.baseUrl, version: 'v1'));

  _registerLazySingleton<PermissionService>(() => PermissionServiceImplementation());
}
