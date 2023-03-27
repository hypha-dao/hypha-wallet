import 'dart:convert';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:async/async.dart';
import 'package:http/http.dart' as http;
import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:amazon_cognito_identity_dart_2/sig_v4.dart';

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
    print('expiration: $expiration');
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
    { "expiration": "${this.expiration}",
      "conditions": [
        {"bucket": "${this.bucket}"},
        ["starts-with", "\$key", "${this.key}"],
        {"acl": "public-read"},
        ["content-length-range", 1, ${this.maxFileSize}],
        {"x-amz-credential": "${this.credential}"},
        {"x-amz-algorithm": "AWS4-HMAC-SHA256"},
        {"x-amz-date": "${this.datetime}" },
        {"x-amz-security-token": "${this.sessionToken}" }
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
  // required String s3IdentityKey,
}) async {
  final _region = s3Region;
  // String _s3Endpoint = 'https://$s3Bucket.s3-$s3Region.amazonaws.com';
  String _s3Endpoint = 'https://$s3Bucket.s3.$s3Region.amazonaws.com';

  _s3Endpoint = 'https://ppp-service-prod-attachmentsbucket-1qc5rzodik7x6.s3.amazonaws.com';
// https://ppp-service-prod-attachmentsbucket-1qc5rzodik7x6.s3.amazonaws.com/protected/us-east-1%3A0042f536-bb79-4b51-9cd4-f7f0edc144a8/daviddelserb-1666366102169.png
// https://ppp-service-prod-attachmentsbucket-1qc5rzodik7x6.s3.amazonaws.com/protected/
  print('post image: $fileName');
  print('using endpoint: $_s3Endpoint');

  final file = image;

  final stream = http.ByteStream(DelegatingStream.typed(file.openRead()));
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

  // below example of actual key - using user identity s3IdentityKey
  // usrIdentityId should match this in this case - maybe it's the same thing
  // aws is a massive mess ;)
  //  s3Identity: "us-east-1:2268a23d-8016-4ea9-bc85-7bf59ed86436",
  //final key = 'protected/us-east-1:2268a23d-8016-4ea9-bc85-7bf59ed86436/illumination-1579323169291.png';

  print('user identity ID $usrIdentityId');

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
  req.fields['acl'] = 'public-read'; // Safe to remove this if your bucket has no ACL permissions
  req.fields['X-Amz-Credential'] = policy.credential;
  req.fields['X-Amz-Algorithm'] = 'AWS4-HMAC-SHA256';
  req.fields['X-Amz-Date'] = policy.datetime;
  req.fields['Policy'] = policy.encode();
  req.fields['X-Amz-Signature'] = signature;
  req.fields['x-amz-security-token'] = credentials.sessionToken!;

  try {
    print('send request... ${req.url}');
    final res = await req.send();
    // ignore: prefer_foreach
    await for (final value in res.stream.transform(utf8.decoder)) {
      print('stream update...');
      print(value);
    }
    print('done.');
    return true;
  } catch (e) {
    print(e.toString());
    rethrow;
  }
}
