import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';

enum Network {
  telos('telos'),
  telosTestnet('telosTestnet'),
  eos('eos'),
  eosTestnet('eosTestnet');

  const Network(this.value);

  final String value;

  static Network fromString(String label) {
    return values.firstWhere(
      (v) => v.value == label,
      orElse: () => Network.telos,
    );
  }
}

const Network _defaultNetwork = Network.telos;

/// Encapsulates everything to do with remote configuration
class RemoteConfigService {
  static Future<RemoteConfigService> initialized() async {
    final rc = RemoteConfigService();
    await rc.setDefaults();
    await FirebaseRemoteConfig.instance.fetchAndActivate();
    return rc;
  }

  Map<String, dynamic> _getMap(String param) {
    return json.decode(FirebaseRemoteConfig.instance.getValue(param).asString());
  }

  Map<String, dynamic> _pppService() {
    return _getMap('pppService');
  }

  Map<String, dynamic> _getNetworkConfig({Network? network}) {
    network = network ?? _defaultNetwork;
    final conf = _getMap('networks');
    final networkFromConfig = conf[network.name];
    if (networkFromConfig == null) {
      throw 'Unknown network: $network';
    }
    return networkFromConfig;
  }

  // base url - read URL
  // network: default is Telos mainnet
  String baseUrl({Network? network}) {
    final networkConfig = _getNetworkConfig(network: network);
    final endpoint = networkConfig['endpoint'];
    return endpoint;
  }

  // Node for push transactions - should be a fast server to prevent timeouts
  // network: default is Telos mainnet.
  String pushTransactionNodeUrl({required Network network}) {
    final networkConfig = _getNetworkConfig(network: network);
    final endpoint = networkConfig['fastEndpoint'];
    return endpoint;
  }

  String graphQLEndpoint({required Network network}) {
    final networkConfig = _getNetworkConfig(network: network);
    final endpoint = networkConfig['graphQlEndpoint'];
    return endpoint;
  }

  String loginContract({Network? network}) {
    final networkConfig = _getNetworkConfig(network: network);
    return networkConfig['loginContract'];
  }

  String loginAction({Network? network}) {
    final networkConfig = _getNetworkConfig(network: network);
    return networkConfig['loginAction'];
  }

  bool get isSignUpEnabled => FirebaseRemoteConfig.instance.getBool('signUpEnabled');

  bool get isWalletEnabled => FirebaseRemoteConfig.instance.getBool('walletEnabled');

  // PPP Profile Service Backend
  String get profileServiceEndpoint => FirebaseRemoteConfig.instance.getString('profileServiceEndpoint');

  String get accountCreatorEndpoint => FirebaseRemoteConfig.instance.getString('accountCreatorEndpoint');

  // PPP Service AWS
  String get awsProfileServiceEndpoint => _pppService()['awsProfileServiceEndpoint'];

  String get pppEndpoint => _pppService()['awsProfileServiceEndpoint'];

  String get identityPoolId => _pppService()['identityPoolId'];

  String get userPoolId => _pppService()['userPoolId'];

  String get clientId => _pppService()['clientId'];

  String get pppOriginAppId => _pppService()['pppOriginAppId'];

  String get pppRegion => _pppService()['region'];

  String get pppS3Region => _pppService()['s3Region'];

  String get pppS3Bucket => _pppService()['s3Bucket'];

  // TODO(NIK): find the best endpoints for EOS
  Future<void> setDefaults() async {
    await FirebaseRemoteConfig.instance.setDefaults({
      'networks': json.encode({
        'telos': {
          'name': 'Telos',
          'endpoint': 'https://mainnet.telos.net',
          'fastEndpoint': 'https://mainnet.telos.net',
          'loginContract': 'eosio.login',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
          'graphQlEndpoint': 'https://alpha-dhomn.tekit.io/graphql'
        },
        'telosTestnet': {
          'name': 'Telos Testnet',
          'endpoint': 'https://testnet.telos.net',
          'fastEndpoint': 'https://testnet.telos.net',
          'loginContract': 'eosio.login',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
          'graphQlEndpoint': 'https://alpha-stts.tekit.io/graphql'
        },
        'eos': {
          'name': 'EOS',
          'endpoint': 'https://eos.greymass.com',
          'fastEndpoint': 'https://eos.greymass.com',
          'loginContract': 'eosio.login',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
          'graphQlEndpoint': ''
        },
        'eosTestnet': {
          'name': 'Jungle4 Testnet',
          'endpoint': 'https://jungle4.dfuse.eosnation.io',
          'fastEndpoint': 'https://jungle4.dfuse.eosnation.io',
          'loginContract': 'eosio.login',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
          'graphQlEndpoint': ''
        }
      }),
      'accountCreatorEndpoint': 'http://34.236.29.152:9108',
      'profileServiceEndpoint': 'http://34.236.29.152:9109',
      'pppService': json.encode({
        'awsProfileServiceEndpoint':
            'https://ttac1sv2yj.execute-api.us-east-1.amazonaws.com/prod', // PPP Prod Sebastian
        'identityPoolId': 'us-east-1:58bf768c-7607-41eb-b512-78314549d61b', // PPP prod
        'userPoolId': 'us-east-1_9voNzsQ2J',
        'clientId': '6a2p1a1jsei5ttp3t3vro1f0c5',
        'pppOriginAppId': '9b833d70-46f6-11ea-a689-e5b7f4a9b462',
        'region': 'us-east-1',
        's3Bucket': 'ppp-service-prod-attachmentsbucket-1qc5rzodik7x6',
        's3Region': 'us-east-1',
      }),
      'pppServiceNEW': json.encode({
        'awsProfileServiceEndpoint':
            'https://nfjlqism6i.execute-api.us-east-1.amazonaws.com/dev', // PPP service Aleksandar
        'identityPoolId': 'us-east-1:b57a53c2-f77d-44d5-9656-15b40da6004d',
        'userPoolId': 'us-east-1_BNGTP2fup',
        'clientId': '6mufhii0pab2392b6muvtiv8k8',
        'pppOriginAppId': '9b833d70-46f6-11ea-a689-e5b7f4a9b462',
        'region': 'us-east-1',
      }),
      'signUpEnabled': false,
      'walletEnabled': false,
    });
    FirebaseRemoteConfig.instance.onConfigUpdated.listen((event) async {
      await FirebaseRemoteConfig.instance.activate();
    });
  }
}
