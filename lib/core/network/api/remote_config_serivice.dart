import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';

enum Networks { telos, telosTestnet, eos, eosTestnet }

/// Encapsulates everything to do with remote configuration
class RemoteConfigService {
  final Networks defaultNetwork = Networks.telos;
  // final Networks defaultNetwork = Networks.telosTestnet;

  static Future<RemoteConfigService> initialized() async {
    return RemoteConfigService()..setDefaults();
  }

  Map<String, dynamic> _getNetworkConfig({String? network}) {
    final remoteConfig = FirebaseRemoteConfig.instance;
    network = network ?? defaultNetwork.name;
    final conf = json.decode(remoteConfig.getValue('networks').asString());
    if (conf[network] == null) {
      throw 'Unknown network: $network';
    }
    return conf[network];
  }

  // base url - read URL
  // network: default is Telos mainnet
  String baseUrl({String? network}) {
    final networkConfig = _getNetworkConfig(network: network);
    final endpoint = networkConfig['endpoint'];
    return endpoint;
  }

  // Node for push transactions - should be a fast server to prevent timeouts
  // network: default is Telos mainnet.
  String pushTransactionNodeUrl({required Networks network}) {
    final networkConfig = _getNetworkConfig(network: network.name);
    final endpoint = networkConfig['fastEndpoint'];
    return endpoint;
  }

  // PPP Profile Service Backend
  String get profileServiceEndpoint => FirebaseRemoteConfig.instance.getString('profileServiceEndpoint');
  String get accountCreatorEndpoint => FirebaseRemoteConfig.instance.getString('accountCreatorEndpoint');

  Future<void> setDefaults() async {
    await FirebaseRemoteConfig.instance.setDefaults({
      'networks': json.encode({
        'telos': {
          'name': 'Telos',
          'endpoint': 'https://mainnet.telos.net',
          'fastEndpoint': 'https://telos.greymass.com',
        },
        'telosTestnet': {
          'name': 'Telos Testnet',
          'endpoint': 'https://testnet.telos.net',
          'fastEndpoint': 'https://testnet.telos.net',
        },
        'eos': {
          'name': 'EOS',
          'endpoint': 'https://eos.greymass.com',
          'fastEndpoint': 'https://eos.greymass.com',
        },
        'eosTestnet': {
          'name': 'Jungle4 Testnet',
          'endpoint': 'https://jungle4.dfuse.eosnation.io',
          'fastEndpoint': 'https://jungle4.dfuse.eosnation.io',
        }
      }),
      'accountCreatorEndpoint': 'http://34.236.29.152:9108',
      'profileServiceEndpoint': 'http://34.236.29.152:9109',
    });
  }
}
