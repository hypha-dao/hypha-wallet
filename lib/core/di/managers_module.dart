part of 'di_setup.dart';

void _registerManagersModule() {
  // Error Handling
  _registerLazySingleton(() => ErrorHandlerManager());
}
