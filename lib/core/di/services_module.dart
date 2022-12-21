part of 'di_setup.dart';

Future<void> _registerServicesModule() async {
  /// DIO
  _registerSingleton(() => Dio());
  _registerSingleton(() => DioClient(_getIt<Dio>()));

  /// Services
  _registerSingleton(() => UserAccountService(dioClient: _getIt<DioClient>()));
}
