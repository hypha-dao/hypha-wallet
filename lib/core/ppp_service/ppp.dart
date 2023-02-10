import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';

class PPP {

  PPP();

  static var instance = PPP();

  var _config;
  var originAppId;
  
  ///     * Configures the PPP client
  /// @param {string} environment to be used test or prod
  /// @param {string} [originAppId] required for standalone apps, the appId of the app using the PPP client
  static void configure(String environment, String originAppId) async {
        instance._config = ppp_config_map[environment];
        originAppId = originAppId;
        if (!instance._config) {
            throw 'No configuration found for specified environment: $environment';
        }
        
        // https://docs.amplify.aws/lib/auth/getting-started/q/platform/flutter/#initialize-amplify-auth

        final auth = AmplifyAuthCognito();
        final api = AmplifyAPI();
        final storage = AmplifyStorageS3();

        await Amplify.addPlugins([auth, api, storage]);

        Amplify.configure(instance._config.AWS);
  }

    static dynamic getConfig(String propertyPath) {
        assert(instance._config, 'PPP configure method should be called first');
        return getObjectAtPath(instance._config, propertyPath, null);
    }

    static dynamic getObjectAtPath(dynamic obj, String path, dynamic value) {
        final steps = path.split('.');
        var currentObj = obj;
        var i = 0;
        while (currentObj != null && currentObj is Map<String, dynamic> && i < steps.length) {
            currentObj = currentObj[steps[i]];
            i++;
        }
        if (currentObj == null) {
            return value;
        } else {
          return currentObj;
        }

    }


    static void setActiveUser(String activeUser) {
        instance.activeUser = activeUser;

        // TODO(n13): Recreate events emitted
        //instance.events.emit('activeUserChanged', activeUser);
    }

    /**
     * @returns {AuthApi}
     */
    static authApi() {
        if (!this._authApi) {
            this._authApi = new AuthApi(this.activeUser);
            this._authApi.init();
            this._authApi.on('signOut', () => PPP.setActiveUser(null));
        }
        return this._authApi;
    }


    /**
     * @returns {ProfileApi}
     */
    static profileApi() {
        if (!this._profileApi) {
            this._profileApi = new ProfileApi(this.activeUser);
            this._profileApi.init();
        }
        return this._profileApi;
    }


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
                'AWSS3': {
                    'region': 'us-east-1',
                    'bucket': 'ppp-service-dev-attachmentsbucket-81z543wrbts3'
                }
            },
            'API': {
                'endpoints': [
                    {
                        'name': 'profileApi',
                        'endpoint': 'https://nfjlqism6i.execute-api.us-east-1.amazonaws.com/dev'
                    }
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
                'AWSS3': {
                    'region': 'us-east-1',
                    'bucket': 'ppp-service-eosmain-attachmentsbucket-1lau7ad0pzcslI'
                }
            },
            'API': {
                'endpoints': [
                    {
                        'name': 'profileApi',
                        'endpoint': 'https://m7asrw9a9h.execute-api.us-east-1.amazonaws.com/eosMain'
                    }
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
                'AWSS3': {
                    'region': 'us-east-1',
                    'bucket': 'ppp-service-prod-attachmentsbucket-1qc5rzodik7x6'
                }
            },
            'API': {
                'endpoints': [
                    {
                        'name': 'profileApi',
                        'endpoint': 'https://ttac1sv2yj.execute-api.us-east-1.amazonaws.com/prod'
                    }
                ]
            }
        },
        'loginContract': 'eosio.login',
        'loginAction': 'loginuser',
        'logoutAction': 'deletelogin',
        'maxImageSize': '1000000',
        'imageTypes': 'image/png, image/jpeg'
    }
}
}


