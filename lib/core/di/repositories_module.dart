part of 'di_setup.dart';

void _registerRepositoriesModule() {
  _registerLazySingleton(() => AuthRepository(_getIt<HyphaSharedPrefs>()));
}
