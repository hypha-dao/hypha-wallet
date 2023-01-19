class Endpoints {
  Endpoints._();

  // base url
  static const String baseUrl = 'http://telos.greymass.com';

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  static const String getAccount = '/v1/chain/get_account';
}
