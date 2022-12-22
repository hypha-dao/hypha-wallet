part of 'di_setup.dart';

void _registerUseCasesModule() {
  _registerFactory(() => CheckAccountAvailabilityUseCase(_getIt<UserAccountRepository>()));
  _registerFactory(() => CreateAccountUseCase(_getIt<UserAccountRepository>()));
}
