import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:amazon_cognito_identity_dart_2/sig_v4.dart';
import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

///
/// Example parameters:
///      headers: Map<String, String>.from({'header-1': 'one', 'header-2': 'two'}),
///      queryParams: Map<String, String>.from({'tracking': 'x123'}),
///      body: Map<String, dynamic>.from({'color': 'blue'}));

Future<dynamic> awsAuthenticatedRequest({
  required CognitoCredentials credentials,
  required String awsRegion,
  String method = 'POST',
  required String endpoint,
  required String path,
  Map<String, String>? headers,
  Map<String, String>? queryParams,
  dynamic body,
}) async {
  // final credentials = CognitoCredentials('ap-southeast-1:xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx', userPool);
  // await credentials.getAwsCredentials(session.getIdToken().getJwtToken());

  if (credentials.accessKeyId == null) {
    throw 'no access key - autenticate session first';
  }
  if (credentials.secretAccessKey == null) {
    throw 'no secretAccessKey - autenticate session first';
  }
  // const endpoint = 'https://xxxx.execute-api.ap-southeast-1.amazonaws.com/dev';
  final awsSigV4Client = AwsSigV4Client(credentials.accessKeyId!, credentials.secretAccessKey!, endpoint,
      sessionToken: credentials.sessionToken, region: awsRegion);

  final signedRequest = SigV4Request(
    awsSigV4Client,
    method: method,
    path: path,
    headers: headers,
    queryParams: queryParams,
    body: body,
  );

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
    return response.data;
  } catch (error) {
    print('Call failed $path $error');
    if (error is DioError) {
      final DioError dioError = error;
      print('message: ${dioError.message}');
      print('status code: ${dioError.response?.statusCode}');
      print('message: ${dioError.response?.statusMessage}');
      print('dioError: $dioError');
    }
    rethrow;
  }
}
