import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/services.dart';

enum Networks { telos, telosTestnet, eos, eosTestnet }

const Networks _defaultNetwork = Networks.telos;

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

  Map<String, dynamic> _pppService({Networks? network}) {
    network = network ?? _defaultNetwork;
    print('ppp service for ${network.name}: ${_getMap('profileService')[network.name]}');
    return _getMap('profileService')[network.name];
  }

  Map<String, dynamic> _getNetworkConfig({Networks? network}) {
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

  String graphQLEndpoint({required Networks network}) {
    final networkConfig = _getNetworkConfig(network: network);
    final endpoint = networkConfig['graphQlEndpoint'];
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

  String inviteContract({Networks? network}) {
    final networkConfig = _getNetworkConfig(network: network);
    return networkConfig['inviteContract'];
  }

  bool get isSignUpEnabled => FirebaseRemoteConfig.instance.getBool('signUpEnabled');

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
    final pppConfig = await loadProfileServiceConfig();
    await FirebaseRemoteConfig.instance.setDefaults({
      'networks': json.encode({
        'telos': {
          'name': 'Telos',
          'endpoint': 'https://mainnet.telos.net',
          'fastEndpoint': 'https://mainnet.telos.net',
          'loginContract': 'eosio.login',
          'inviteContract': 'join.hypha',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
          'graphQlEndpoint': 'https://alpha-dhomn.tekit.io/graphql'
        },
        'telosTestnet': {
          'name': 'Telos Testnet',
          'endpoint': 'https://testnet.telos.net',
          'fastEndpoint': 'https://testnet.telos.net',
          'loginContract': 'eosio.login',
          'inviteContract': 'joinhypha111',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
          'graphQlEndpoint': 'https://alpha-stts.tekit.io/graphql'
        },
        'eos': {
          'name': 'EOS',
          'endpoint': 'https://eos.greymass.com',
          'fastEndpoint': 'https://eos.greymass.com',
          'loginContract': 'eosio.login',
          'inviteContract': 'join.hypha',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
          'graphQlEndpoint': ''
        },
        'eosTestnet': {
          'name': 'Jungle4 Testnet',
          'endpoint': 'https://jungle4.dfuse.eosnation.io',
          'fastEndpoint': 'https://jungle4.dfuse.eosnation.io',
          'loginContract': 'eosio.login',
          'inviteContract': 'joinxhypha11',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
          'graphQlEndpoint': ''
        }
      }),
      'accountCreatorEndpoint': 'http://34.236.29.152:9108',
      'profileServiceEndpoint': 'http://34.236.29.152:9109',
      'profileService': json.encode({
        'telos': pppConfig.getProfileSeriviceConfig(Networks.telos),
        'telosTestnet': pppConfig.getProfileSeriviceConfig(Networks.telosTestnet),
        'eos': pppConfig.getProfileSeriviceConfig(Networks.eos),
        'eosTestnet': pppConfig.getProfileSeriviceConfig(Networks.eosTestnet),
      }),
      'pppService': json.encode({
        // DEPRECATED - use profileService above
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
        // NEW profile serivce
        'awsProfileServiceEndpoint':
            'https://nfjlqism6i.execute-api.us-east-1.amazonaws.com/dev', // PPP service Aleksandar
        'identityPoolId': 'us-east-1:b57a53c2-f77d-44d5-9656-15b40da6004d',
        'userPoolId': 'us-east-1_BNGTP2fup',
        'clientId': '6mufhii0pab2392b6muvtiv8k8',
        'pppOriginAppId': '9b833d70-46f6-11ea-a689-e5b7f4a9b462',
        'region': 'us-east-1',
      }),
      'signUpEnabled': false,
    });
    FirebaseRemoteConfig.instance.onConfigUpdated.listen((event) async {
      await FirebaseRemoteConfig.instance.activate();
    });
  }

  Future<Map<String, dynamic>> loadProfileServiceConfig() async {
    final configString = await rootBundle.loadString('assets/config/profile_serivce/config.json');
    final configJson = jsonDecode(configString);
    return configJson as Map<String, dynamic>;
  }
}

extension MapExtensions on Map<String, dynamic> {
  Map<String, dynamic> getProfileSeriviceConfig(Networks network) {
    final networkMap = {
      Networks.telos: 'prod',
      Networks.telosTestnet: 'test',
      Networks.eos: 'eos',
      Networks.eosTestnet: 'eosTestNet',
    };
    final data = this[networkMap[network]];

    return {
      'awsProfileServiceEndpoint': data['AWS']['API']['endpoints'][0]['endpoint'],
      'identityPoolId': data['AWS']['Auth']['identityPoolId'],
      'userPoolId': data['AWS']['Auth']['userPoolId'],
      'clientId': data['AWS']['Auth']['userPoolWebClientId'],
      'pppOriginAppId': '9b833d70-46f6-11ea-a689-e5b7f4a9b462', // hard-coded
      'region': data['AWS']['Auth']['region'],
      's3Bucket': data['AWS']['Storage']['AWSS3']['bucket'],
      's3Region': data['AWS']['Storage']['AWSS3']['region'],
    };
  }
}
