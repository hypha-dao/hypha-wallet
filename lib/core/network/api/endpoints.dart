class Endpoints {
  Endpoints._();

  // base url TODO(Nik): Add Base URL here pls
  static const String baseUrl = 'https://reqres.in/api';

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  static const String userAccountAvailable = '/v1/chain/get_account';
}
