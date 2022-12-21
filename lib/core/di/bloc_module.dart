part of 'di_setup.dart';

void _registerBlocsModule() {
  /// Global Blocs
  _registerFactory(() => AuthenticationBloc(
        _getIt<AuthRepository>(),
        _getIt<HyphaSharedPrefs>(),
      ));

  _registerFactory(() => DeeplinkBloc());

  _registerFactoryWithParams<CreateAccountBloc, XFile?, String>((image, userName) => CreateAccountBloc(
        image,
        userName,
      ));
}
