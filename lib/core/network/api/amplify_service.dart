import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:amazon_cognito_identity_dart_2/sig_v4.dart';
import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/remote_config_serivice.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

/// Encapsulates everything to do with remote configuration
class AmplifyService {
  final EOSService eosService;
  final CognitoUserPool userPool = CognitoUserPool(
    'us-east-1_9voNzsQ2J',
    '6a2p1a1jsei5ttp3t3vro1f0c5',
  );
  CognitoUser? cognitoUser;
  CognitoUserSession? session;

  RemoteConfigService get remoteConfigService => eosService.remoteConfigService;

  AmplifyService(this.eosService);

  bool isConnected() {
    return session != null && session!.isValid();
  }

// this isn't very useful
  Future<List<CognitoUserAttribute>?> getAuthUserAttributes() async {
    List<CognitoUserAttribute>? attributes;
    try {
      attributes = await cognitoUser?.getUserAttributes();
    } catch (e) {
      print(e);
    }
    attributes?.forEach((attribute) {
      print('attribute ${attribute.getName()} has value ${attribute.getValue()}');
    });
    return attributes;
  }

  Future<dynamic> getAuthUser() async {
    List<CognitoUserAttribute>? attributes;
    try {
      attributes = await cognitoUser?.getUserAttributes();
    } catch (e) {
      print(e);
    }
    attributes?.forEach((attribute) {
      print('attribute ${attribute.getName()} has value ${attribute.getValue()}');
    });
    return attributes;
  }

  // ignore: flutter_style_todos
  Future<bool> loginUser(String accountName) async {
    // ignore: todo
    // TODO add isLoggedIn function
    if (session?.isValid() ?? false) {
      print('already logged in');
      return true;
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
      // print(e.challengeName); // == CUSTOM_CHALLENGE
      // print(e.challengeParameters); // == {USERNAME: illumination, loginCode: 0009746659}
      final loginCode = e.challengeParameters['loginCode'];
      print('login code: $loginCode');

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

  Future<dynamic> getProfile() async {
    final result = await _request(
      path: 'get-profile',
      body: {'originAppId': 'BASE_APP'},
    );
    print('get profile result $result');
    return result;
  }

  Future<dynamic> _request({
    required String path,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    Map<String, String>? queryParams,
  }) async {
    final String region = 'us-east-1';
    final credentials = CognitoCredentials(
      remoteConfigService.identityPoolId,
      userPool,
    );
    await credentials.getAwsCredentials(session?.getIdToken().getJwtToken());

    if (credentials.accessKeyId != null && credentials.secretAccessKey != null) {
      final endpoint = eosService.remoteConfigService.awsProfileServiceEndpoint;
      final awsSigV4Client = AwsSigV4Client(
        credentials.accessKeyId!,
        credentials.secretAccessKey!,
        endpoint,
        sessionToken: credentials.sessionToken,
        region: region,
      );

      final signedRequest = SigV4Request(
        awsSigV4Client,
        method: 'POST',
        path: '/$path',
        headers: headers,
        queryParams: queryParams,
        body: body,
      );

      //http.Response response;

      try {
        final networkingManager = NetworkingManager(signedRequest.url!);
        final response = await networkingManager.post(
          signedRequest.url!,
          options: Options(
            headers: signedRequest.headers,
          ),
          queryParameters: signedRequest.queryParams,
          data: signedRequest.body,
        );
        print(response.statusCode);
        print(response.statusMessage);
        print(response.statusMessage);
        print('RES: ');
        print(response.data);
      } catch (error) {
        print('Call failed $path $error');
        if (error is DioError) {
          final DioError dioError = error;
          print('message: ${dioError.message}');
          print('status code: ${dioError.response?.statusCode}');
          print('message: ${dioError.response?.statusMessage}');
          print('dioError: $dioError');
        }
      }
    } else {
      print('error: no credentials');
    }
  }
}
