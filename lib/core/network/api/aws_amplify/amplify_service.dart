import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:amazon_cognito_identity_dart_2/sig_v4.dart';
import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_policy.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/aws_authenticated_request.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

String getRandomString(int len) {
  final random = Random.secure();
  final values = List<int>.generate(len, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}

/// Encapsulates everything to do with remote configuration
class AmplifyService {
  final EOSService eosService;
  final NetworkingManager networkingManager;

  CognitoUserPool userPool(Network network) => CognitoUserPool(
        remoteConfigService.userPoolId(network),
        remoteConfigService.clientId(network),
      );
  CognitoUser? cognitoUser;
  CognitoUserSession? session;

  RemoteConfigService get remoteConfigService => eosService.remoteConfigService;
  String awsLambdaEndpoint(Network network) => remoteConfigService.awsProfileServiceEndpoint(network);
  String awsLambdaRegion(Network network) => remoteConfigService.pppRegion(network);
  String s3Bucket(Network network) => remoteConfigService.pppS3Bucket(network);
  String s3Region(Network network) => remoteConfigService.pppS3Region(network);

  AmplifyService(this.eosService, this.networkingManager);

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

  Future<dynamic> signUp(UserProfileData user, {String? name}) async {
    final List<AttributeArg> userAttributes = [];
    if (name != null) {
      userAttributes.add(AttributeArg(name: 'name', value: name));
    }
    try {
      final randomPassword = getRandomString(20);
      final result = await userPool(user.network).signUp(
        user.accountName,
        randomPassword,
        userAttributes: userAttributes,
      );
      return result;
    } catch (e) {
      print('_signUp error: $e');
      rethrow;
    }
  }

  Future<void> logout() async {
    if (session != null) {
      if (session!.isValid()) {
        session?.invalidateToken();
      }
      session = null;
    }
    cognitoUser = null;
  }

  Future<bool> profileServiceLoginUser(UserProfileData user, {bool isSignUp = false}) async {
    if (session != null && session!.isValid()) {
      print('already logged in');
      return true;
    }
    if (isSignUp) {
      try {
        // ignore: unused_local_variable
        final res = await signUp(user);
        print('signup res: $res');
      } catch (error) {
        print('error signing up: $error');
        // ignore user exists error
        // throw other errors
      }
    }

    cognitoUser = CognitoUser(
      user.accountName,
      userPool(user.network),
    );
    cognitoUser!.authenticationFlowType = 'CUSTOM_AUTH';

    final authDetails = AuthenticationDetails(
      username: user.accountName,
      password: 'Password001',
    );

    try {
      session = await cognitoUser!.initiateAuth(authDetails);
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
      await eosService.loginWithCode(user: user, loginCode: loginCode);
      print('return challenge $loginCode');
      session = await cognitoUser!.sendCustomChallengeAnswer(loginCode);

      print('logged in: ${session?.isValid()}');

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

  ///
  /// register method is used to modify any user attributes such as name, bio, etc
  ///
  Future<dynamic> register(Map<String, dynamic> pppData, Network network) async {
    final result = await _request(
      path: 'register',
      body: <String, dynamic>{
        ...pppData,
        'originAppId': remoteConfigService.pppOriginAppId,
        'appData': {},
      },
      network: network,
    );
    return result;
  }

  // maybe try to cache credentials?
  Future<CognitoCredentials> getCredentials(Network network) async {
    final credentials = CognitoCredentials(
      remoteConfigService.identityPoolId(network),
      userPool(network),
    );
    await credentials.getAwsCredentials(session?.getIdToken().getJwtToken());
    return credentials;
  }

  Future<dynamic> _request({
    required String path,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    Map<String, String>? queryParams,
    CognitoCredentials? credentials,
    required Network network,
  }) async {
    final String region = awsLambdaRegion(network);
    credentials ??= await getCredentials(network);
    return awsAuthenticatedRequest(
      credentials: credentials,
      awsRegion: region,
      endpoint: awsLambdaEndpoint(network),
      path: path,
      body: body,
      headers: headers,
      queryParams: queryParams,
    );
  }

  Future<dynamic> setName(String name, Network network) async {
    return register(
      {
        'publicData': {
          'name': name,
        },
        'appData': {},
      },
      network,
    );
  }

  Future<dynamic> setBio(String bio, Network network) async {
    return register(
      {
        'publicData': {
          'bio': bio,
        },
        'appData': {},
      },
      network,
    );
  }

  Future<dynamic> removeAvatar(Network network) async {
    return register(
      {
        'publicData': {
          'avatar': null,
        },
        'appData': {},
      },
      network,
    );
  }

  Future<bool> deleteAccount(Network network) async {
    if (cognitoUser == null) {
      throw 'Log in before calling deleteAccount';
    }
    bool userDeleted = false;
    try {
      // delete all user personal data - needed for our public access get account service
      await register(
        {
          'publicData': {
            'avatar': null,
            'bio': null,
            'name': null,
            'deleted': true,
          },
          'appData': {},
        },
        network,
      );
      // delete the user
      userDeleted = await cognitoUser!.deleteUser();
    } catch (e) {
      print(e);
    }
    print('Deleted account: $userDeleted');
    return userDeleted;
  }

  Future<dynamic> setS3Identity(String s3Identity, Network network) async {
    return register(
      {
        'publicData': {
          's3Identity': s3Identity,
        },
        'appData': {},
      },
      network,
    );
  }

  Future<dynamic> initializeProfile(
      {required String name, required String s3Identity, String? bio, String? avatar, required Network network}) async {
    return register(
      {
        'publicData': {
          'name': name,
          's3Identity': s3Identity,
          if (bio != null) ...{
            'bio': bio,
          },
          if (avatar != null) ...{
            'avatar': avatar,
          },
        },
        'appData': {},
        'emailAddress': 'not-real-email-${getRandomString(10)}@notrealemailxxx1.io',
      },
      network,
    );
  }

  Future<dynamic> setPicture(File image, String fileName, Network network) async {
    try {
      final credentials = await getCredentials(network);

      final res = await _postImage(
        credentials: credentials,
        image: image,
        fileName: fileName,
        s3Region: s3Region(network),
        s3Bucket: s3Bucket(network),
      );

      print('post image finished: $res ');

      final res2 = await register(
        {
          'publicData': {
            'avatar': fileName,
          },
          'appData': {},
        },
        network,
      );
      return res2;
    } catch (error) {
      print('Error posting image: $error');
      print(error);
    }
  }

  Future<bool> _postImage({
    required CognitoCredentials credentials,
    required File image,
    required String fileName,
    required String s3Region,
    required String s3Bucket,
  }) async {
    final _region = s3Region;
    final String _s3Endpoint = 'https://$s3Bucket.s3.amazonaws.com';
    final file = image;

    final length = await file.length();
    final uri = Uri.parse(_s3Endpoint);

    if (credentials.userIdentityId == null) {
      throw 'No user identity userIdentityId';
    }
    if (credentials.accessKeyId == null) {
      throw 'No accessKeyId (not logged in)';
    }
    if (credentials.secretAccessKey == null) {
      throw 'No secretAccessKey (not logged in)';
    }
    if (credentials.sessionToken == null) {
      throw 'No sessionToken (not logged in)';
    }

    final String usrIdentityId = credentials.userIdentityId!;

    // Note: The s3 bucket is set up like this - user identity is part of the file path
    final String bucketKey = 'protected/$usrIdentityId/$fileName';

    final policy = Policy.fromS3PresignedPost(
      bucketKey,
      s3Bucket,
      15,
      credentials.accessKeyId!,
      length,
      credentials.sessionToken!,
      region: _region,
    );
    final key = SigV4.calculateSigningKey(credentials.secretAccessKey!, policy.datetime, _region, 's3');
    final signature = SigV4.calculateSignature(key, policy.encode());

    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(file.path, filename: fileName),
      'key': policy.key,
      'acl': 'public-read',
      'X-Amz-Credential': policy.credential,
      'X-Amz-Algorithm': 'AWS4-HMAC-SHA256',
      'X-Amz-Date': policy.datetime,
      'Policy': policy.encode(),
      'X-Amz-Signature': signature,
      'x-amz-security-token': credentials.sessionToken
    });

    try {
      // ignore: unused_local_variable
      final res = await networkingManager.post(uri.toString(), data: formData);
      return true;
    } catch (e) {
      print('post image error: $e');
      rethrow;
    }
  }
}
