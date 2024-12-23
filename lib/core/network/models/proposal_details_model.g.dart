// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProposalDetailsModel _$ProposalDetailsModelFromJson(
        Map<String, dynamic> json) =>
    ProposalDetailsModel(
      id: json['docId'] as String?,
      dao: json['dao'] == null
          ? null
          : DaoData.fromJson(json['dao'] as Map<String, dynamic>),
      commitment: (json['details_timeShareX100_i'] as num?)?.toInt(),
      title: json['details_title_s'] as String?,
      unity: (json['unity'] as num?)?.toDouble(),
      quorum: (json['quorum'] as num?)?.toDouble(),
      pastUnity: (json['details_ballotAlignment_i'] as num?)?.toInt(),
      pastQuorum: (json['details_ballotQuorum_i'] as num?)?.toInt(),
      expiration: json['ballot_expiration_t'] == null
          ? null
          : DateTime.parse(json['ballot_expiration_t'] as String),
      creator: json['creator'] == null
          ? null
          : ProfileData.fromJson(json['creator'] as Map<String, dynamic>),
      votes: (json['vote'] as List<dynamic>?)
          ?.map((e) => VoteModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['details_description_s'] as String?,
    );

Map<String, dynamic> _$ProposalDetailsModelToJson(
        ProposalDetailsModel instance) =>
    <String, dynamic>{
      'docId': instance.id,
      'dao': instance.dao,
      'details_timeShareX100_i': instance.commitment,
      'details_title_s': instance.title,
      'unity': instance.unity,
      'quorum': instance.quorum,
      'details_ballotAlignment_i': instance.pastUnity,
      'details_ballotQuorum_i': instance.pastQuorum,
      'ballot_expiration_t': instance.expiration?.toIso8601String(),
      'creator': instance.creator,
      'vote': instance.votes,
      'details_description_s': instance.description,
    };
