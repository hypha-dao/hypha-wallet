import 'dart:ui';

import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:amazon_cognito_identity_dart_2/sig_v4.dart';
import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/aws_authenticated_request.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/remote_config_service.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';
import 'package:image_picker/image_picker.dart';

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
      body: {
        'originAppId': remoteConfigService.pppOriginAppId,
      },
    );
    print('get profile result $result');
    Map<String, dynamic> data = result['profile'];
    ProfileData profile = ProfileData.fromPPPDataJson(data);

    return result;
  }

  //   async register(data) {
  //     const { profile } = await this._request({
  //         endpoint: 'register',
  //         payload: data,
  //     });
  //     return profile;
  // }

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
    print('register result $result');
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
        'drafts': [],
      },
      'appData': {},
    });
  }

  Future<dynamic> setPicture(XFile image, String avatarImage) async {
    // TODO: upload image

    return register({
      'publicData': {
        'avatarImage': avatarImage,
      },
      'appData': {},
    });
  }

/**/

// WED:
// For just getting the URL simply reverse engineer the URL we get from PPP service
// or even just use PPP service URL resolution

  Future<dynamic> getObject(String key) async {
    final _credentials = await getCredentials();

    // https://ppp-service-prod-attachmentsbucket-1qc5rzodik7x6.s3.amazonaws.com/protected/us-east-1%3A2268a23d-8016-4ea9-bc85-7bf59ed86436/illumination-1579323169291.png
    final host = 'ppp-service-prod-attachmentsbucket-1qc5rzodik7x6.s3.amazonaws.com';
    final region = 'us-east-1';
    final service = 's3';
    // final key = 'my-s3-bucket/ap-southeast-1:xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/square-cinnamon.jpg';
    final key = 'protected/us-east-1:2268a23d-8016-4ea9-bc85-7bf59ed86436/illumination-1579323169291.png';
    final payload = SigV4.hashCanonicalRequest('');
    final datetime = SigV4.generateDatetime();
    // ignore: leading_newlines_in_multiline_strings
    final canonicalRequest = '''GET
${'/$key'.split('/').map((s) => Uri.encodeComponent(s)).join('/')}

host:$host
x-amz-content-sha256:$payload
x-amz-date:$datetime
x-amz-security-token:${_credentials.sessionToken}

host;x-amz-content-sha256;x-amz-date;x-amz-security-token
$payload''';
    final credentialScope = SigV4.buildCredentialScope(datetime, region, service);
    final stringToSign =
        SigV4.buildStringToSign(datetime, credentialScope, SigV4.hashCanonicalRequest(canonicalRequest));
    final signingKey = SigV4.calculateSigningKey(_credentials.secretAccessKey!, datetime, region, service);
    final signature = SigV4.calculateSignature(signingKey, stringToSign);

    final authorization = [
      'AWS4-HMAC-SHA256 Credential=${_credentials.accessKeyId}/$credentialScope',
      'SignedHeaders=host;x-amz-content-sha256;x-amz-date;x-amz-security-token',
      'Signature=$signature',
    ].join(',');

    final uri = Uri.https(host, key);
    // http.Response response;
    try {
      final networkingManager = NetworkingManager(uri.toString());
      final response = await networkingManager.get(
        uri.toString(),
        options: Options(
          headers: {
            'Authorization': authorization,
            'x-amz-content-sha256': payload,
            'x-amz-date': datetime,
            'x-amz-security-token': _credentials.sessionToken,
          },
        ),
      );

      // response = await http.get(uri, headers: {
      //   'Authorization': authorization,
      //   'x-amz-content-sha256': payload,
      //   'x-amz-date': datetime,
      //   'x-amz-security-token': _credentials.sessionToken,
      // });
      print("got res: $response");

      // response body bytes contains url
    } catch (e) {
      print(e);
      return;
    }

    //final file = File(path.join('/path/to/my/folder', 'square-cinnamon-downloaded.jpg'));

    try {
      // TODO - this downloads bytes.... we kinda just want a URL
      // await file.writeAsBytes(response.bodyBytes);
    } catch (e) {
      print(e.toString());
      return;
    }

    print('complete!');
  }
  /**/
}
