part of 'di_setup.dart';

Future<void> _registerServicesModule() async {
  /// DIO
  _registerLazySingleton(() => Dio());
  _registerLazySingleton(() => DioClient(_getIt<Dio>()));

  /// Services
  _registerLazySingleton(() => UserAccountService(dioClient: _getIt<DioClient>()));
}
