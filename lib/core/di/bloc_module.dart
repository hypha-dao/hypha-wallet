part of 'di_setup.dart';

void _registerBlocsModule() {
  /// Global Blocs
  _registerFactory(() => AuthenticationBloc(
        _getIt<AuthRepository>(),
        _getIt<HyphaSharedPrefs>(),
      ));

  _registerFactory(() => DeeplinkBloc());

  _registerFactoryWithParams<CreateAccountBloc, XFile?, String>(
    (image, userName) => CreateAccountBloc(
      _getIt<CheckAccountAvailabilityUseCase>(),
      image,
      userName,
    ),
  );

  _registerFactoryWithParams<EditAccountBloc, XFile?, String>(
    (image, userName) => EditAccountBloc(
      _getIt<CheckAccountAvailabilityUseCase>(),
      _getIt<CreateAccountUseCase>(),
      image,
      userName,
    ),
  );
}
