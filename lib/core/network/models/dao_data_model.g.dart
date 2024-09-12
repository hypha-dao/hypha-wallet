// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dao_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DaoData _$DaoDataFromJson(Map<String, dynamic> json) => DaoData(
      docId: (json['docId'] as num).toInt(),
      detailsDaoName: json['detailsDaoName'] as String,
      settingsDaoTitle: json['settingsDaoTitle'] as String,
      logoIPFSHash: json['logoIPFSHash'] as String,
      logoType: json['logoType'] as String,
      settingsDaoUrl: json['settingsDaoUrl'] as String,
    );

Map<String, dynamic> _$DaoDataToJson(DaoData instance) => <String, dynamic>{
      'docId': instance.docId,
      'detailsDaoName': instance.detailsDaoName,
      'settingsDaoTitle': instance.settingsDaoTitle,
      'logoIPFSHash': instance.logoIPFSHash,
      'logoType': instance.logoType,
      'settingsDaoUrl': instance.settingsDaoUrl,
    };
