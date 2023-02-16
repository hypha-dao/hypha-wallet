class Endpoints {
  Endpoints._();

  // base url - the load balancer takes care of available features on a given node, such as history, etc
  static const String baseUrl = 'http://mainnet.telos.net';

  // Node to push transactions - should be a fast server
  static const String pushTransactionNodeUrl = 'http://telos.greymass.com';

  static const String defaultV2EndpointUrl = 'https://api.telosfoundation.io';

  // PPP Profile Service Backend
  static const String profileServiceEndpoint = 'http://34.236.29.152:9109'; // temporary, read-only
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
