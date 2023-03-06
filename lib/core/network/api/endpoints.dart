import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';

enum Networks { telos, telosTestnet, eos, eosTestnet }

class Endpoints {
  Endpoints._();

  static Map<String, dynamic> getNetworkConfig({String? network}) {
    final remoteConfig = FirebaseRemoteConfig.instance;
    network = network ?? Networks.telos.name;
    final conf = json.decode(remoteConfig.getValue('networks').asString());
    if (conf[network] == null) {
      throw 'Unknown network: $network';
    }
    return conf[network];
  }

  // base url - read URL
  // network: default is Telos mainnet
  static String baseUrl({String? network}) {
    final networkConfig = getNetworkConfig(network: network);
    final endpoint = networkConfig['endpoint'];
    return endpoint;
  }

  // Node for push transactions - should be a fast server to prevent timeouts
  // network: default is Telos mainnet.
  static String pushTransactionNodeUrl({String? network}) {
    final networkConfig = getNetworkConfig(network: network);
    final endpoint = networkConfig['fastEndpoint'];
    return endpoint;
  }

  static const String defaultV2EndpointUrl = 'https://api.telosfoundation.io';

  // PPP Profile Service Backend
  static String get profileServiceEndpoint => FirebaseRemoteConfig.instance.getString('profileServiceEndpoint');
  static const String pppProfile = '/profile';
  static const String pppProfiles = '/profiles';
  static const String pppSearch = '/search';
  static const String pppGetImageUrl = '/getImageUrl';

  static String get accountCreatorEndpoint => FirebaseRemoteConfig.instance.getString('accountCreatorEndpoint');

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  static const String getAccount = '/v1/chain/get_account';
  static const String getTransactionHistory = '/v2/history/get_actions';
}
