import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/aws_authenticated_request.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/post_image.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/remote_config_service.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

String getRandomString(int len) {
  final random = Random.secure();
  final values = List<int>.generate(len, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}

/// Encapsulates everything to do with remote configuration
class AmplifyService {
  final EOSService eosService;
  CognitoUserPool get userPool => CognitoUserPool(
        remoteConfigService.userPoolId,
        remoteConfigService.clientId,
      );
  CognitoUser? cognitoUser;
  CognitoUserSession? session;

  RemoteConfigService get remoteConfigService => eosService.remoteConfigService;
  String get awsLambdaEndpoint => remoteConfigService.awsProfileServiceEndpoint;
  String get awsLambdaRegion => remoteConfigService.pppRegion;
  String get s3Bucket => remoteConfigService.pppS3Bucket;
  String get s3Region => remoteConfigService.pppS3Region;

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

  Future<List<CognitoUserAttribute>?> getUserAttributes() async {
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

  Future<dynamic> signUp(String accountName, {String? name}) async {
    final List<AttributeArg> userAttributes = [];
    if (name != null) {
      userAttributes.add(AttributeArg(name: 'name', value: name));
    }
    try {
      final randomPassword = getRandomString(20);
      print("ranomd pass: $randomPassword");
      print("length: ${randomPassword.length}");
      final result = await userPool.signUp(
        accountName,
        randomPassword,
        userAttributes: userAttributes,
      );
      print('result: $result');
      return result;
    } catch (e) {
      print('_signUp error: $e');
      rethrow;
    }
  }

  Future<bool> loginUser(String accountName, {bool isSignUp = false}) async {
    if (session?.isValid() ?? false) {
      print('already logged in');
      return true;
    }
    if (isSignUp) {
      try {
        // ignore: unused_local_variable
        final res = await signUp(accountName);
        print('signup res: $res');
      } catch (error) {
        print('error signing up: $error');
        // ignore user exists error
        // throw other errors
      }
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

    try {
      session = await cognitoUser.initiateAuth(authDetails);
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
      final loginCode = e.challengeParameters['loginCode'];
      await eosService.loginWithCode(accountName: accountName, loginCode: loginCode, network: Networks.telos);
      print('return challenge $loginCode');
      session = await cognitoUser.sendCustomChallengeAnswer(loginCode);
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

    return true;
  }

  Future<ProfileData> getProfile() async {
    final result = await _request(
      path: 'get-profile',
      body: {
        'originAppId': remoteConfigService.pppOriginAppId,
      },
    );
    final Map<String, dynamic> data = result['profile'];
    final ProfileData profile = ProfileData.fromPPPDataJson(data);
    return profile;
  }

  ///
  /// register method is used to modify any user attributes such as name, bio, etc
  ///
  Future<dynamic> register(Map<String, dynamic> pppData) async {
    final b = <String, dynamic>{
      ...pppData,
      'originAppId': remoteConfigService.pppOriginAppId,
    };
    print('register body: $b');
    final result = await _request(
      path: 'register',
      body: <String, dynamic>{
        ...pppData,
        'originAppId': remoteConfigService.pppOriginAppId,
      },
    );
    return result;
  }

  // maybe try to cache credentials?
  Future<CognitoCredentials> getCredentials() async {
    final credentials = CognitoCredentials(
      remoteConfigService.identityPoolId,
      userPool,
    );
    await credentials.getAwsCredentials(session?.getIdToken().getJwtToken());
    return credentials;
  }

  Future<dynamic> _request({
    required String path,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    Map<String, String>? queryParams,
  }) async {
    final String region = awsLambdaRegion;
    final credentials = await getCredentials();
    return awsAuthenticatedRequest(
      credentials: credentials,
      awsRegion: region,
      endpoint: awsLambdaEndpoint,
      path: path,
      body: body,
      headers: headers,
      queryParams: queryParams,
    );
  }

  Future<dynamic> setName(String name) async {
    return register({
      'publicData': {
        'name': name,
      },
      'appData': {},
    });
  }

  Future<dynamic> setBio(String bio) async {
    return register({
      'publicData': {
        'bio': bio,
      },
      'appData': {},
    });
  }

  Future<dynamic> setPicture(File image, String fileName) async {
    try {
      final credentials = await getCredentials();

      final res = await postImage(
        credentials: credentials,
        image: image,
        fileName: fileName,
        s3Region: s3Region,
        s3Bucket: s3Bucket,
      );

      print('post image finished: $res ');

      final res2 = await register({
        'publicData': {
          'avatar': fileName,
        },
        'appData': {},
      });
      return res2;
    } catch (error) {
      print('Error posting image: $error');
      print(error);
    }
  }
}
