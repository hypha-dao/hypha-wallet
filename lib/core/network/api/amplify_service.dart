import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/remote_config_serivice.dart';

/// Encapsulates everything to do with remote configuration
class AmplifyService {
  final CognitoUserPool userPool = CognitoUserPool(
    'us-east-1_9voNzsQ2J',
    '6a2p1a1jsei5ttp3t3vro1f0c5',
  );
  CognitoUser? cognitoUser;
  CognitoUserSession? session;

  static Future<AmplifyService> initialized() async {
    return AmplifyService()..init();
  }

  // TODO - maybe this doesn't need to be async
  Future<void> init() async {
    print("init amplify");

    print("done initializing anplify");
  }

  // ignore: flutter_style_todos
  Future<bool> loginUser(String accountName) async {
    // ignore: todo
    // TODO add isLoggedIn function
    if (session?.isValid() ?? false) {
      throw 'already logged in';
    }
    final cognitoUser = CognitoUser(
      accountName,
      userPool,
    );
    cognitoUser.authenticationFlowType = 'CUSTOM_AUTH';

    final authDetails = AuthenticationDetails(
      username: accountName,
      password: 'Password001',
    );
    //CognitoUserSession? session;
    try {
      session = await cognitoUser.initiateAuth(authDetails);
      // session = await cognitoUser.authenticateUser(authDetails);
    } on CognitoUserNewPasswordRequiredException catch (e) {
      print('CognitoUserNewPasswordRequiredException $e');
      // handle New Password challenge
    } on CognitoUserMfaRequiredException catch (e) {
      print('CognitoUserMfaRequiredException $e');
      // handle SMS_MFA challenge
    } on CognitoUserSelectMfaTypeException catch (e) {
      print('CognitoUserSelectMfaTypeException $e');
      // handle SELECT_MFA_TYPE challenge
    } on CognitoUserMfaSetupException catch (e) {
      print('CognitoUserMfaSetupException $e');
      // handle MFA_SETUP challenge
    } on CognitoUserTotpRequiredException catch (e) {
      print('CognitoUserTotpRequiredException $e');
      // handle SOFTWARE_TOKEN_MFA challenge
    } on CognitoUserCustomChallengeException catch (e) {
      print('CognitoUserCustomChallengeException $e');
      // handle CUSTOM_CHALLENGE challenge
      print(e.challengeName); // == CUSTOM_CHALLENGE
      print(e.challengeParameters); // == {USERNAME: illumination, loginCode: 0009746659}
      final loginCode = e.challengeParameters['loginCode'];
      print('login code: $loginCode');
      final eosService = GetIt.I.get<EOSService>();
      await eosService.loginWithCode(accountName: accountName, loginCode: loginCode, network: Networks.telos);

      print('return challenge $loginCode');
      session = await cognitoUser.sendCustomChallengeAnswer(loginCode);

      print('session: $session');

      final attributes = await cognitoUser.getUserAttributes();

      if (attributes != null) {
        attributes.forEach((element) {
          print('attri: $element');
        });
      }

      return true;
    } on CognitoUserConfirmationNecessaryException catch (e) {
      print('CognitoUserConfirmationNecessaryException $e');
      // handle User Confirmation Necessary
    } on CognitoClientException catch (e) {
      print('CognitoClientException $e');
      // handle Wrong Username and Password and Cognito Client
    } catch (e) {
      print('error logging in: $e');
    }
    print('jwt token: ${session?.getAccessToken().getJwtToken()}');

    return true;
  }
}
