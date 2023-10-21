// ignore_for_file: prefer_single_quotes

import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/services.dart';
import 'package:hypha_wallet/core/network/models/network.dart';

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

  Map<String, dynamic> _pppService({required Network network}) {
    network = network;
    return _getMap('profileService')[network.name];
  }

  Map<String, dynamic> _getNetworkConfig({required Network network}) {
    network = network;
    final conf = _getMap('networks');
    final networkFromConfig = conf[network.name];
    if (networkFromConfig == null) {
      throw 'Unknown network: $network';
    }
    return networkFromConfig;
  }

  String _pppCacheEndpoint({required Network network}) {
    network = network;
    return _getMap('profileServiceEndpoints')[network.name];
  }

  // base url - read URL
  // network: default is Telos mainnet
  String baseUrl({required Network network}) {
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

  String loginContract({required Network network}) {
    final networkConfig = _getNetworkConfig(network: network);
    return networkConfig['loginContract'];
  }

  String loginAction({required Network network}) {
    final networkConfig = _getNetworkConfig(network: network);
    return networkConfig['loginAction'];
  }

  String inviteContract({required Network network}) {
    final networkConfig = _getNetworkConfig(network: network);
    return networkConfig['inviteContract'];
  }

  String payCpuContract({required Network network}) {
    final networkConfig = _getNetworkConfig(network: network);
    return networkConfig['payCpuContract'];
  }

  String daoContract({required Network network}) {
    final networkConfig = _getNetworkConfig(network: network);
    return networkConfig['daoContract'];
  }

  bool get isSignUpEnabled => FirebaseRemoteConfig.instance.getBool('signUpEnabled');
  String get signUpLinkUrl => FirebaseRemoteConfig.instance.getString('signUpLinkUrl');

  int get newAccountFreshnessHours => FirebaseRemoteConfig.instance.getInt('newAccountFreshnessHours');

  bool get isWalletEnabled => FirebaseRemoteConfig.instance.getBool('walletEnabled');

  bool isPayCpuEnabled(Network network) => _getMap('payCpuEnabledNetwork')[network.name] ?? false;

  String v1HistoryEndpoint(Network network) => _getMap('historyEndpoints')[network.name]['v1'];
  String v2HistoryEndpoint(Network network) => _getMap('historyEndpoints')[network.name]['v2'];

  // PPP Profile Service Backend
  String profileServiceCacheEndpoint(Network network) => _pppCacheEndpoint(network: network);

  String get accountCreatorEndpoint => FirebaseRemoteConfig.instance.getString('accountCreatorEndpoint');

  // PPP Service AWS
  String awsProfileServiceEndpoint(Network network) => _pppService(network: network)['awsProfileServiceEndpoint'];

  String pppEndpoint(Network network) => _pppService(network: network)['awsProfileServiceEndpoint'];

  String identityPoolId(Network network) => _pppService(network: network)['identityPoolId'];

  String userPoolId(Network network) => _pppService(network: network)['userPoolId'];

  String clientId(Network network) => _pppService(network: network)['clientId'];

  String pppOriginAppId(Network network) => _pppService(network: network)['pppOriginAppId'];

  String pppRegion(Network network) => _pppService(network: network)['region'];

  String pppS3Region(Network network) => _pppService(network: network)['s3Region'];

  String pppS3Bucket(Network network) => _pppService(network: network)['s3Bucket'];

  Future<void> setDefaults() async {
    final pppConfig = await loadProfileServiceConfig();
    await FirebaseRemoteConfig.instance.setDefaults({
      'networks': json.encode({
        "telos": {
          "name": "Telos",
          "endpoint": "https://mainnet.telos.net",
          "fastEndpoint": "https://mainnet.telos.net",
          "loginContract": "eosio.login",
          "loginAction": "loginuser",
          "logoutAction": "deletelogin",
          "inviteContract": "join.hypha",
          "payCpuContract": "paycpu.hypha",
          "daoContract": "dao.hypha",
          "graphQlEndpoint": "https://alpha-dhomn.tekit.io/graphql"
        },
        "telosTestnet": {
          "name": "Telos Testnet",
          "endpoint": "https://testnet.telos.net",
          "fastEndpoint": "https://testnet.telos.net",
          "loginContract": "logintester1",
          "loginAction": "loginuser",
          "logoutAction": "logoutuser",
          "inviteContract": "joinhypha111",
          "payCpuContract": "paycpuxhypha",
          "daoContract": "mtdhoxhyphaa",
          "graphQlEndpoint": "https://alpha-stts.tekit.io/graphql"
        },
        "eos": {
          "name": "EOS",
          "endpoint": "https://eos.greymass.com",
          "fastEndpoint": "https://eos.greymass.com",
          "loginContract": "logintohypha",
          "loginAction": "loginuser",
          "logoutAction": "logoutuser",
          "inviteContract": "join.hypha",
          "payCpuContract": "paycpu.hypha",
          "daoContract": "dao.hypha",
          "graphQlEndpoint": "https://nameless-brook-400051.eu-central-1.aws.cloud.dgraph.io/graphql"
        },
        "eosTestnet": {
          "name": "Jungle4 Testnet",
          "endpoint": "http://jungle.eosusa.io/",
          "fastEndpoint": "http://jungle.eosusa.io/",
          "loginContract": "logintohypha",
          "loginAction": "loginuser",
          "logoutAction": "logoutuser",
          "inviteContract": "joinxhypha11",
          "payCpuContract": "paycpuxhypha",
          "daoContract": "dao.hypha",
          "graphQlEndpoint": "https://nameless-brook-400226.eu-central-1.aws.cloud.dgraph.io/graphql"
        }
      }),
      'accountCreatorEndpoint': 'http://34.236.29.152:9108',
      'profileServiceEndpoints': json.encode({
        "telos": "http://34.236.29.152:9109",
        "telosTestnet": "http://34.236.29.152:9110",
        "eos": "http://34.236.29.152:9111",
        "eosTestnet": "http://34.236.29.152:9112",
      }),
      'profileService': json.encode({
        'telos': pppConfig.getProfileServiceConfig(Network.telos),
        'telosTestnet': pppConfig.getProfileServiceConfig(Network.telosTestnet),
        'eos': pppConfig.getProfileServiceConfig(Network.eos),
        'eosTestnet': pppConfig.getProfileServiceConfig(Network.eosTestnet),
      }),
      'historyEndpoints': json.encode({
        "telos": {
          "v1": "http://mainnet.telos.net",
          "v2": "http://mainnet.telos.net",
        },
        "telosTestnet": {
          "v1": "http://testnet.telos.net",
          "v2": "http://testnet.telos.net",
        },
        "eos": {
          "v1": "http://eos.greymass.com",
          "v2": "http://eos.eosusa.io",
        },
        "eosTestnet": {
          "v1": "http://jungle.eosusa.io",
          "v2": "http://jungle.eosusa.io",
        },
      }),
      'signUpEnabled': true,
      "signUpLinkUrl": "https://dao.hypha.earth/hypha/login",
      'walletEnabled': false,
      'newAccountFreshnessHours': 48,
      'payCpuEnabledNetwork': json.encode({"telos": false, "telosTestnet": true, "eos": true, "eosTestnet": true})
    });
    FirebaseRemoteConfig.instance.onConfigUpdated.listen((event) async {
      // Side note: This does not seem to work reliably on simulator but it works in the app.
      await FirebaseRemoteConfig.instance.activate();
    });
  }

  Future<Map<String, dynamic>> loadProfileServiceConfig() async {
    final configString = await rootBundle.loadString('assets/config/profile_service/config.json');
    final configJson = jsonDecode(configString);
    return configJson as Map<String, dynamic>;
  }
}

// pppServiceConfig
extension MapExtensions on Map<String, dynamic> {
  Map<String, dynamic> getProfileServiceConfig(Network network) {
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
      'pppOriginAppId': data['AWS']['originAppId'],
      'region': data['AWS']['Auth']['region'],
      's3Bucket': data['AWS']['Storage']['AWSS3']['bucket'],
      's3Region': data['AWS']['Storage']['AWSS3']['region'],
    };
  }
}
