import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/services.dart';

enum Network {
  telos,
  telosTestnet,
  eos,
  eosTestnet;

  static Network fromString(String label) {
    return values.firstWhere(
      (v) => v.name == label,
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

  Map<String, dynamic> _pppService({Network? network}) {
    network = network ?? _defaultNetwork;
    return _getMap('profileService')[network.name];
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

  String inviteContract({Network? network}) {
    final networkConfig = _getNetworkConfig(network: network);
    return networkConfig['inviteContract'];
  }

  String payCpuContract({Network? network}) {
    final networkConfig = _getNetworkConfig(network: network);
    return networkConfig['payCpuContract'];
  }

  String daoContract({Network? network}) {
    final networkConfig = _getNetworkConfig(network: network);
    return networkConfig['daoContract'];
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
    final pppConfig = await loadProfileServiceConfig();
    await FirebaseRemoteConfig.instance.setDefaults({
      'networks': json.encode({
        'telos': {
          'name': 'Telos',
          'endpoint': 'https://mainnet.telos.net',
          'fastEndpoint': 'https://mainnet.telos.net',
          'loginContract': 'eosio.login',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
          'inviteContract': 'join.hypha',
          'payCpuContract': 'paycpu.hypha',
          'daoContract': 'dao.hypha',
          'graphQlEndpoint': 'https://alpha-dhomn.tekit.io/graphql'
        },
        'telosTestnet': {
          'name': 'Telos Testnet',
          'endpoint': 'https://testnet.telos.net',
          'fastEndpoint': 'https://testnet.telos.net',
          'loginContract': 'eosio.login',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
          'inviteContract': 'joinhypha111',
          'payCpuContract': 'paycpuxhypha',
          'daoContract': 'mtdhoxhyphaa',
          'graphQlEndpoint': 'https://alpha-stts.tekit.io/graphql'
        },
        'eos': {
          'name': 'EOS',
          'endpoint': 'https://eos.greymass.com',
          'fastEndpoint': 'https://eos.greymass.com',
          'loginContract': 'eosio.login',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
          'inviteContract': 'join.hypha',
          'payCpuContract': 'paycpu.hypha',
          'daoContract': 'dao.hypha',
          'graphQlEndpoint': 'https://nameless-brook-400051.eu-central-1.aws.cloud.dgraph.io/graphql'
        },
        'eosTestnet': {
          'name': 'Jungle4 Testnet',
          'endpoint': 'https://jungle4.dfuse.eosnation.io',
          'fastEndpoint': 'https://jungle4.dfuse.eosnation.io',
          'loginContract': 'eosio.login',
          'loginAction': 'loginuser',
          'logoutAction': 'deletelogin',
          'inviteContract': 'joinxhypha11',
          'payCpuContract': 'paycpuxhypha',
          'daoContract': 'dao.hypha',
          'graphQlEndpoint': 'https://nameless-brook-400226.eu-central-1.aws.cloud.dgraph.io/graphql'
        }
      }),
      'accountCreatorEndpoint': 'http://34.236.29.152:9108',
      'profileServiceEndpoint': 'http://34.236.29.152:9109',
      'profileService': json.encode({
        'telos': pppConfig.getProfileSeriviceConfig(Network.telos),
        'telosTestnet': pppConfig.getProfileSeriviceConfig(Network.telosTestnet),
        'eos': pppConfig.getProfileSeriviceConfig(Network.eos),
        'eosTestnet': pppConfig.getProfileSeriviceConfig(Network.eosTestnet),
      }),
      'signUpEnabled': false,
      'walletEnabled': false,
    });
    FirebaseRemoteConfig.instance.onConfigUpdated.listen((event) async {
      await FirebaseRemoteConfig.instance.activate();
    });
  }

  Future<Map<String, dynamic>> loadProfileServiceConfig() async {
    final configString = await rootBundle.loadString('assets/config/profile_service/config.json');
    final configJson = jsonDecode(configString);
    return configJson as Map<String, dynamic>;
  }
}

extension MapExtensions on Map<String, dynamic> {
  Map<String, dynamic> getProfileSeriviceConfig(Network network) {
    final networkMap = {
      Network.telos: 'prod',
      Network.telosTestnet: 'test',
      Network.eos: 'eos',
      Network.eosTestnet: 'eosTestNet',
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
