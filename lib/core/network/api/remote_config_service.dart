import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';

enum Networks { telos, telosTestnet, eos, eosTestnet }

const Networks _defaultNetwork = Networks.telos;
// const Networks _defaultNetwork = Networks.telosTestnet;

/// Encapsulates everything to do with remote configuration
class RemoteConfigService {
  static Future<RemoteConfigService> initialized() async {
    return RemoteConfigService()..setDefaults();
  }

  Map<String, dynamic> _getNetworkConfig({Networks? network}) {
    final remoteConfig = FirebaseRemoteConfig.instance;
    network = network ?? _defaultNetwork;
    final conf = json.decode(remoteConfig.getValue('networks').asString());
    final networkFromConfig = conf[network.name];
    if (networkFromConfig == null) {
      throw 'Unknown network: $network';
    }
    return networkFromConfig;
  }

  // base url - read URL
  // network: default is Telos mainnet
  String baseUrl({Networks? network}) {
    final networkConfig = _getNetworkConfig(network: network);
    final endpoint = networkConfig['endpoint'];
    return endpoint;
  }

  // Node for push transactions - should be a fast server to prevent timeouts
  // network: default is Telos mainnet.
  String pushTransactionNodeUrl({required Networks network}) {
    final networkConfig = _getNetworkConfig(network: network);
    final endpoint = networkConfig['fastEndpoint'];
    return endpoint;
  }

  String loginContract({Networks? network}) {
    final networkConfig = _getNetworkConfig(network: network);
    return networkConfig['loginContract'];
  }

  String loginAction({Networks? network}) {
    final networkConfig = _getNetworkConfig(network: network);
    return networkConfig['loginAction'];
  }

  // PPP Profile Service Backend
  String get profileServiceEndpoint => FirebaseRemoteConfig.instance.getString('profileServiceEndpoint');
  String get awsProfileServiceEndpoint => FirebaseRemoteConfig.instance.getString('awsProfileServiceEndpoint');
  String get accountCreatorEndpoint => FirebaseRemoteConfig.instance.getString('accountCreatorEndpoint');
  String get identityPoolId => 'us-east-1:58bf768c-7607-41eb-b512-78314549d61b';

  // TODO(NIK): find the best endpoints for EOS
  Future<void> setDefaults() async {
    await FirebaseRemoteConfig.instance.setDefaults({
      'networks': json.encode({
        'telos': {
          'name': 'Telos',
          'endpoint': 'https://mainnet.telos.net',
          'fastEndpoint': 'https://telos.greymass.com',
          'loginContract': 'eosio.login',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
        },
        'telosTestnet': {
          'name': 'Telos Testnet',
          'endpoint': 'https://testnet.telos.net',
          'fastEndpoint': 'https://testnet.telos.net',
          'loginContract': 'eosio.login',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
        },
        'eos': {
          'name': 'EOS',
          'endpoint': 'https://eos.greymass.com',
          'fastEndpoint': 'https://eos.greymass.com',
          'loginContract': 'eosio.login',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
        },
        'eosTestnet': {
          'name': 'Jungle4 Testnet',
          'endpoint': 'https://jungle4.dfuse.eosnation.io',
          'fastEndpoint': 'https://jungle4.dfuse.eosnation.io',
          'loginContract': 'eosio.login',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
        }
      }),
      'accountCreatorEndpoint': 'http://34.236.29.152:9108',
      'profileServiceEndpoint': 'http://34.236.29.152:9109',
      'awsProfileServiceEndpoint': 'https://ttac1sv2yj.execute-api.us-east-1.amazonaws.com/prod',
    });
  }
}
