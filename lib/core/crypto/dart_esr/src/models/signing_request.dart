// ignore_for_file: unnecessary_this, prefer_final_locals

import 'dart:typed_data';

import 'package:hypha_wallet/core/crypto/dart_esr/src/models/info_pair.dart';
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:json_annotation/json_annotation.dart';

part 'signing_request.g.dart';

@JsonSerializable(explicitToJson: true)
class SigningRequest {
  @JsonKey(name: 'chain_id')
  List<dynamic> chainId = [];

  @JsonKey(name: 'req')
  List<dynamic> req = [];

  @JsonKey(name: 'flags')
  int flags = 1;

  @JsonKey(name: 'callback')
  String? callback = '';

  @JsonKey(name: 'info')
  List<InfoPair> info = [];

  SigningRequest();

  factory SigningRequest.fromJson(Map<String, dynamic> json) {
    final List info = json['info'];
    final List<InfoPair> infos = info
        .map((e) => (InfoPair()
          ..key = e['key']
          ..value = e['value']))
        .toList();
    return SigningRequest()
      ..chainId = json['chain_id'] as List<dynamic>
      ..req = json['req'] as List<dynamic>
      ..flags = json['flags'] as int
      ..callback = json['callback'] as String?
      ..info = infos;
  }

  Map<String, dynamic> toJson() => _$SigningRequestToJson(this);

  @override
  String toString() => this.toJson().toString();

  Uint8List toBinary(Type type) {
    var buffer = SerialBuffer(Uint8List(0));
    type.serialize!(type, buffer, toJson());
    return buffer.asUint8List();
  }

  factory SigningRequest.fromBinary(Type type, dynamic data) {
    SerialBuffer buffer;
    if (data is SerialBuffer) {
      buffer = data;
    } else if (data is Uint8List) {
      buffer = SerialBuffer(data);
    } else {
      throw 'Data must be either Uint8List or SerialBuffer';
    }
    var deserializedData = Map<String, dynamic>.from(type.deserialize?.call(type, buffer));
    LogHelper.d('SigningRequest.fromBinary $deserializedData');
    return SigningRequest.fromJson(deserializedData);
  }

  // return expiration for this signing request - can be null
  DateTime? getExpiration() {
    if (req.length > 1) {
      final signRequestMap = req[1];
      if (signRequestMap is Map) {
        final expirationString = signRequestMap['expiration'];
        if (expirationString != null) {
          try {
            final expirationDate = DateTime.parse(expirationString);
            return expirationDate;
          } catch (parseError) {
            print('unable to parse date object: $expirationString');
          }
        }
      }
    }
    return null;
  }
}
