// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'esr_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ESRAction _$ESRActionFromJson(Map<String, dynamic> json) => ESRAction(
      (json['authorization'] as List<dynamic>?)
              ?.map((e) => Authorization.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    )
      ..account = json['account'] as String?
      ..name = json['name'] as String?
      ..data = json['data'];

Map<String, dynamic> _$ESRActionToJson(ESRAction instance) => <String, dynamic>{
      'account': instance.account,
      'name': instance.name,
      'authorization': instance.authorization.map((e) => e.toJson()).toList(),
      'data': instance.data,
    };
