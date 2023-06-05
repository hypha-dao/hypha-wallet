class Endpoints {
  Endpoints._();

  // profile service
  static const String pppProfile = '/profile';
  static const String pppProfiles = '/profiles';
  static const String pppSearch = '/search';
  static const String pppGetImageUrl = '/getImageUrl';

  // EOS node REST API
  static const String getAccount = '/v1/chain/get_account';
  static const String getTransactionHistory = '/v2/history/get_actions';
  static const String getCurrencyBalance = '/v1/chain/get_currency_balance';

  // Account Creator REST API
  static const String createAccount = '/createAccount';

  // receiveTimeout
  static const Duration receiveTimeout = Duration(seconds: 15);

  // connectTimeout
  static const Duration connectionTimeout = Duration(seconds: 15);
}
