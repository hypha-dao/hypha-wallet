class Endpoints {
  Endpoints._();

  static const String pppProfile = '/profile';
  static const String pppProfiles = '/profiles';
  static const String pppSearch = '/search';
  static const String pppGetImageUrl = '/getImageUrl';

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  static const String getAccount = '/v1/chain/get_account';
  static const String getTransactionHistory = '/v2/history/get_actions';
}
