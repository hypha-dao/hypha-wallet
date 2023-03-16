import 'package:amazon_cognito_identity_dart_2/cognito.dart';

/// Encapsulates everything to do with remote configuration
class AmplifyService {
  final CognitoUserPool userPool = CognitoUserPool(
    'ap-southeast-1_xxxxxxxxx',
    'xxxxxxxxxxxxxxxxxxxxxxxxxx',
  );
  static Future<AmplifyService> initialized() async {
    return AmplifyService()..init();
  }

  // TODO - maybe this doesn't need to be async
  Future<void> init() async {
    print("init amplify");

    print("done initializing anplify");
  }

  Future<bool> loginUser(String accountName) async {
    final cognitoUser = CognitoUser('accountName', userPool);
    final authDetails = AuthenticationDetails(
      username: 'accountName',
      password: 'Password001',
    );
    CognitoUserSession? session;
    try {
      session = await cognitoUser.authenticateUser(authDetails);
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
    } on CognitoUserConfirmationNecessaryException catch (e) {
      print('CognitoUserConfirmationNecessaryException $e');
      // handle User Confirmation Necessary
    } on CognitoClientException catch (e) {
      print('CognitoClientException $e');
      // handle Wrong Username and Password and Cognito Client
    } catch (e) {
      print(e);
    }
    print('jwt token: ${session?.getAccessToken().getJwtToken()}');

    return true;
  }
}
