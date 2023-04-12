// Note: This code based on the example in amazon_cognito_identity_dart_2 flutter package
import 'dart:convert';

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
