// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProposalDetailsModel _$ProposalDetailsModelFromJson(
        Map<String, dynamic> json) =>
    ProposalDetailsModel(
      id: json['docId'] as String,
      type: json['__typename'] as String,
      creationDate: DateTime.parse(json['createdDate'] as String),
      dao: json['dao'] == null
          ? null
          : DaoData.fromJson(json['dao'] as Map<String, dynamic>),
      commitment: (json['details_timeShareX100_i'] as num?)?.toInt(),
      title: json['details_title_s'] as String?,
      unity: (json['details_ballotAlignment_i'] as num?)?.toInt(),
      quorum: (json['details_ballotQuorum_i'] as num?)?.toInt(),
      expiration: json['ballot_expiration_t'] == null
          ? null
          : DateTime.parse(json['ballot_expiration_t'] as String),
      creator: json['creator'] == null
          ? null
          : ProfileData.fromJson(json['creator'] as Map<String, dynamic>),
      votes: (json['vote'] as List<dynamic>?)
          ?.map((e) => VoteModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tokenMixPercentage: (json['details_deferredPercX100_i'] as num?)?.toInt(),
      cycleCount: (json['details_periodCount_i'] as num?)?.toInt(),
      cycleStartDate: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      utilityAmount: json['details_rewardAmount_a'] as String?,
      voiceAmount: json['details_voiceAmount_a'] as String?,
      cashAmount: json['details_pegAmount_a'] as String?,
      utilityAmountPerPeriod:
          json['details_rewardSalaryPerPeriod_a'] as String?,
      voiceAmountPerPeriod: json['details_voiceSalaryPerPeriod_a'] as String?,
      cashAmountPerPeriod: json['details_pegSalaryPerPeriod_a'] as String?,
      description: json['details_description_s'] as String?,
      periodDurationSec:
          (json['settings_periodDurationSec_i'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProposalDetailsModelToJson(
        ProposalDetailsModel instance) =>
    <String, dynamic>{
      'docId': instance.id,
      'dao': instance.dao,
      'details_timeShareX100_i': instance.commitment,
      'details_title_s': instance.title,
      'details_ballotAlignment_i': instance.unity,
      'details_ballotQuorum_i': instance.quorum,
      'ballot_expiration_t': instance.expiration?.toIso8601String(),
      'creator': instance.creator,
      'vote': instance.votes,
      '__typename': instance.type,
      'settings_periodDurationSec_i': instance.periodDurationSec,
      'createdDate': instance.creationDate.toIso8601String(),
      'details_deferredPercX100_i': instance.tokenMixPercentage,
      'details_periodCount_i': instance.cycleCount,
      'start': instance.cycleStartDate?.toIso8601String(),
      'details_rewardAmount_a': instance.utilityAmount,
      'details_voiceAmount_a': instance.voiceAmount,
      'details_pegAmount_a': instance.cashAmount,
      'details_rewardSalaryPerPeriod_a': instance.utilityAmountPerPeriod,
      'details_voiceSalaryPerPeriod_a': instance.voiceAmountPerPeriod,
      'details_pegSalaryPerPeriod_a': instance.cashAmountPerPeriod,
      'details_description_s': instance.description,
    };
