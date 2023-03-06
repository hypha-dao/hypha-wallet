part of 'di_setup.dart';

Future _registerFirebaseModule() async {
  await Firebase.initializeApp();
  // // Register Dependencies
  // /// Core
  _registerLazySingleton(() => Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform));
  //
  // /// Real-Time Database
  // // _registerLazySingleton(() => FirebaseFirestore.instance);
  //
  // /// Auth
  // // _registerLazySingleton(() => firebaseAuth);
  //
  // /// Remote Config
  _getIt.registerSingleton(FirebaseRemoteConfig.instance);

  // not sure this should go here?
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
