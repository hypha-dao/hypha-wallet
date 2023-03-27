import 'dart:convert';
import 'dart:io';

import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:amazon_cognito_identity_dart_2/sig_v4.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

// Note: This code based on the ewxample in amazon_cognito_identity_dart_2 flutter package
class Policy {
  String expiration;
  String region;
  String bucket;
  String key;
  String credential;
  String datetime;
  String sessionToken;
  int maxFileSize;

  Policy(
    this.key,
    this.bucket,
    this.datetime,
    this.expiration,
    this.credential,
    this.maxFileSize,
    this.sessionToken, {
    this.region = 'us-east-1',
  });

  factory Policy.fromS3PresignedPost(
    String key,
    String bucket,
    int expiryMinutes,
    String accessKeyId,
    int maxFileSize,
    String sessionToken, {
    required String region,
  }) {
    final datetime = SigV4.generateDatetime();
    final expiration = DateTime.now().add(Duration(minutes: expiryMinutes)).toUtc().toString().split(' ').join('T');
    // print('expiration: $expiration');
    final cred = '$accessKeyId/${SigV4.buildCredentialScope(datetime, region, 's3')}';
    final p = Policy(key, bucket, datetime, expiration, cred, maxFileSize, sessionToken, region: region);
    return p;
  }

  String encode() {
    final bytes = utf8.encode(toString());
    return base64.encode(bytes);
  }

  @override
  String toString() {
    // Safe to remove the "acl" line if your bucket has no ACL permissions
    return '''
    { "expiration": "$expiration",
      "conditions": [
        {"bucket": "$bucket"},
        ["starts-with", "\$key", "$key"],
        {"acl": "public-read"},
        ["content-length-range", 1, $maxFileSize],
        {"x-amz-credential": "$credential"},
        {"x-amz-algorithm": "AWS4-HMAC-SHA256"},
        {"x-amz-date": "$datetime" },
        {"x-amz-security-token": "$sessionToken" }
      ]
    }
    ''';
  }
}

Future<bool> postImage({
  required CognitoCredentials credentials,
  required File image,
  required String fileName,
  required String s3Region,
  required String s3Bucket,
}) async {
  final _region = s3Region;
  final String _s3Endpoint = 'https://$s3Bucket.s3.amazonaws.com';
  final file = image;

  //final stream = http.ByteStream(DelegatingStream.typed(file.openRead()));
  final stream = http.ByteStream(file.openRead())..cast();

  final length = await file.length();

  final uri = Uri.parse(_s3Endpoint);
  final req = http.MultipartRequest('POST', uri);
  final multipartFile = http.MultipartFile('file', stream, length, filename: path.basename(file.path));

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

  req.files.add(multipartFile);
  req.fields['key'] = policy.key;
  req.fields['acl'] = 'public-read';
  req.fields['X-Amz-Credential'] = policy.credential;
  req.fields['X-Amz-Algorithm'] = 'AWS4-HMAC-SHA256';
  req.fields['X-Amz-Date'] = policy.datetime;
  req.fields['Policy'] = policy.encode();
  req.fields['X-Amz-Signature'] = signature;
  req.fields['x-amz-security-token'] = credentials.sessionToken!;

  try {
    final res = await req.send();
    // ignore: prefer_foreach
    await for (final value in res.stream.transform(utf8.decoder)) {
      // Note: The stream update seems to only trigger if there was an error uploading.
      print('stream update...');
      print(value);
    }
    return true;
  } catch (e) {
    print('post image error: $e');
    rethrow;
  }
}
