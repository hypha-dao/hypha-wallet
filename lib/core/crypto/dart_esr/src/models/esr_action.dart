import 'dart:typed_data';

import 'package:hypha_wallet/core/crypto/dart_esr/dart_esr.dart';
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart' as eos;
import 'package:json_annotation/json_annotation.dart';

part 'esr_action.g.dart';

@JsonSerializable(explicitToJson: true)
class ESRAction {
  @JsonKey(name: 'account')
  String? account;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'authorization', defaultValue: [])
  List<Authorization> authorization;

  @JsonKey(name: 'data')
  Object? data;

//  @JsonKey(name: 'hex_data')
//  String hexData;

  ESRAction(this.authorization);

  factory ESRAction.fromJson(Map<String, dynamic> json) => _$ESRActionFromJson(json);

  Map<String, dynamic> toJson() => _$ESRActionToJson(this);

  @override
  String toString() => toJson().toString();

  Uint8List toBinary(eos.Type type) {
    final buffer = eos.SerialBuffer(Uint8List(0));
    type.serialize!(type, buffer, toJson());
    return buffer.asUint8List();
  }

  factory ESRAction.fromBinary(eos.Type type, dynamic data) {
    eos.SerialBuffer buffer;
    if (data is eos.SerialBuffer) {
      buffer = data;
    } else if (data is Uint8List) {
      buffer = eos.SerialBuffer(data);
    } else {
      throw 'Data must be either Uint8List or SerialBuffer';
    }
    final deserializedData = Map<String, dynamic>.from(type.deserialize!(type, buffer));
    return ESRAction.fromJson(deserializedData);
  }
}
