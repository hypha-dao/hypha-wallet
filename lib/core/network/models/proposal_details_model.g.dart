// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProposalDetailsModel _$ProposalDetailsModelFromJson(
        Map<String, dynamic> json) =>
    ProposalDetailsModel(
      json['creator'] as String,
      json['__typename'] as String,
      DateTime.parse(json['createdDate'] as String),
      json['details_pegSalaryPerPeriod_a'] as String?,
      json['details_voiceSalaryPerPeriod_a'] as String?,
      json['details_rewardSalaryPerPeriod_a'] as String?,
      (json['unity'] as num?)?.toInt(),
      (json['details_ballotQuorum_i'] as num?)?.toInt(),
      (json['vote'] as List<dynamic>?)
          ?.map((e) => VoteModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['dao'] as String?,
      (json['pass'] as num?)?.toInt(),
      (json['fail'] as num?)?.toInt(),
      id: json['docId'] as String,
      title: json['details_title_s'] as String?,
      commitment: (json['details_timeShareX100_i'] as num?)?.toInt(),
      tokenMixPercentage: (json['details_deferredPercX100_i'] as num?)?.toInt(),
      cycleCount: (json['details_periodCount_i'] as num?)?.toInt(),
      cashAmount: json['details_rewardAmount_a'] as String?,
      cycleStartDate: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      voiceAmount: json['details_voiceAmount_a'] as String?,
      utilityAmount: json['details_pegAmount_a'] as String?,
      description: json['details_description_s'] as String?,
      expiration: json['ballot_expiration_t'] == null
          ? null
          : DateTime.parse(json['ballot_expiration_t'] as String),
    );

Map<String, dynamic> _$ProposalDetailsModelToJson(
        ProposalDetailsModel instance) =>
    <String, dynamic>{
      'docId': instance.id,
      'creator': instance.creator,
      '__typename': instance.type,
      'createdDate': instance.creationDate.toIso8601String(),
      'details_deferredPercX100_i': instance.tokenMixPercentage,
      'details_periodCount_i': instance.cycleCount,
      'start': instance.cycleStartDate?.toIso8601String(),
      'details_pegAmount_a': instance.utilityAmount,
      'details_voiceAmount_a': instance.voiceAmount,
      'details_rewardAmount_a': instance.cashAmount,
      'details_pegSalaryPerPeriod_a': instance.utilityAmountPerPeriod,
      'details_voiceSalaryPerPeriod_a': instance.voiceAmountPerPeriod,
      'details_rewardSalaryPerPeriod_a': instance.cashAmountPerPeriod,
      'ballot_expiration_t': instance.expiration?.toIso8601String(),
      'details_timeShareX100_i': instance.commitment,
      'unity': instance.unity,
      'details_ballotQuorum_i': instance.quorum,
      'details_title_s': instance.title,
      'dao': instance.daoName,
      'details_description_s': instance.description,
      'pass': instance.votedYesCount,
      'fail': instance.votedNoCount,
      'vote': instance.voters,
    };
