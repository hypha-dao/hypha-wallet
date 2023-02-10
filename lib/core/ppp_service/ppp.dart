import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:hypha_wallet/core/ppp_service/service/auth_api.dart';
import 'package:hypha_wallet/core/ppp_service/service/profile_api.dart';

class PPP {
  static var instance = PPP();

  Map<String, dynamic>? _config;
  String? originAppId;
  AuthApi? _authApi;
  ProfileApi? _profileApi;
  String? activeUser;

  // exposting some config params as getters
  String? get loginContract => _config?['loginContract'];
  String? get imageTypes => _config?['imageTypes'];
  int? get maxImageSize => int.parse(_config?['maxImageSize']);

  /// Configures the PPP client
  /// @param {string} environment to be used test or prod
  /// @param {string} [originAppId] required for standalone apps, the appId of the app using the PPP client
  static void configure(String environment, String originAppId) async {
    instance._config = ppp_config_map[environment];
    instance.originAppId = originAppId;
    if (instance._config == null) {
      throw 'No configuration found for specified environment: $environment';
    }

    final auth = AmplifyAuthCognito();
    final api = AmplifyAPI();
    final storage = AmplifyStorageS3();
    await Amplify.addPlugins([auth, api, storage]);

    Amplify.configure(instance._config!['AWS']);
  }

  // we implement change of user later..
  void checkUser(String activeUser) {
    if (instance.activeUser != null) {
      if (instance.activeUser != activeUser) {
        throw 'Change of users not implemented';
      }
      instance.activeUser = activeUser;
    }
  }

  /// @returns {AuthApi}
  static AuthApi authApi(String activeUser) {
    instance.checkUser(activeUser);
    instance._authApi ??= AuthApi(activeUser: activeUser, loginContract: instance.loginContract!);
    return instance._authApi!;
  }

  /// @returns {ProfileApi}
  static ProfileApi profileApi(String activeUser) {
    instance.checkUser(activeUser);
    instance._profileApi ??= ProfileApi();
    return instance._profileApi!;
  }

  // TODO(n13): Put json in file once it's working
  static const Map<String, dynamic> ppp_config_map = {
    'test': {
      'AWS': {
        'Auth': {
          'region': 'us-east-1',
          'userPoolId': 'us-east-1_BNGTP2fup',
          'userPoolWebClientId': '6mufhii0pab2392b6muvtiv8k8',
          'identityPoolId': 'us-east-1:b57a53c2-f77d-44d5-9656-15b40da6004d'
        },
        'Storage': {
          'AWSS3': {'region': 'us-east-1', 'bucket': 'ppp-service-dev-attachmentsbucket-81z543wrbts3'}
        },
        'API': {
          'endpoints': [
            {'name': 'profileApi', 'endpoint': 'https://nfjlqism6i.execute-api.us-east-1.amazonaws.com/dev'}
          ]
        }
      },
      'loginContract': 'logintester1',
      'loginAction': 'loginuser',
      'logoutAction': 'deletelogin',
      'maxImageSize': '1000000',
      'imageTypes': 'image/png, image/jpeg'
    },
    'eos': {
      'AWS': {
        'Auth': {
          'region': 'us-east-1',
          'userPoolId': 'us-east-1_lgd67Lgcq',
          'userPoolWebClientId': '498nk7ee6mjqt62n55rmka6e68',
          'identityPoolId': 'us-east-1:940e4c1b-2456-4c41-95eb-10a2b5982592'
        },
        'Storage': {
          'AWSS3': {'region': 'us-east-1', 'bucket': 'ppp-service-eosmain-attachmentsbucket-1lau7ad0pzcslI'}
        },
        'API': {
          'endpoints': [
            {'name': 'profileApi', 'endpoint': 'https://m7asrw9a9h.execute-api.us-east-1.amazonaws.com/eosMain'}
          ]
        }
      },
      'loginContract': 'logintohypha',
      'loginAction': 'loginuser',
      'logoutAction': 'logoutuser',
      'maxImageSize': '1000000',
      'imageTypes': 'image/png, image/jpeg'
    },
    'prod': {
      'AWS': {
        'Auth': {
          'region': 'us-east-1',
          'userPoolId': 'us-east-1_9voNzsQ2J',
          'userPoolWebClientId': '6a2p1a1jsei5ttp3t3vro1f0c5',
          'identityPoolId': 'us-east-1:58bf768c-7607-41eb-b512-78314549d61b'
        },
        'Storage': {
          'AWSS3': {'region': 'us-east-1', 'bucket': 'ppp-service-prod-attachmentsbucket-1qc5rzodik7x6'}
        },
        'API': {
          'endpoints': [
            {'name': 'profileApi', 'endpoint': 'https://ttac1sv2yj.execute-api.us-east-1.amazonaws.com/prod'}
          ]
        }
      },
      'loginContract': 'eosio.login',
      'loginAction': 'loginuser',
      'logoutAction': 'deletelogin',
      'maxImageSize': '1000000',
      'imageTypes': 'image/png, image/jpeg'
    }
  };
}
