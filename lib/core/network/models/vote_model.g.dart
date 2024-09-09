// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoteModel _$VoteModelFromJson(Map<String, dynamic> json) => VoteModel(
      json['voterImageUrl'] as String?,
      json['vote_voter_n'] as String,
      $enumDecode(_$VoteStatusEnumMap, json['vote_vote_s']),
    );

Map<String, dynamic> _$VoteModelToJson(VoteModel instance) => <String, dynamic>{
      'vote_voter_n': instance.voter,
      'vote_vote_s': _$VoteStatusEnumMap[instance.voteStatus]!,
      'voterImageUrl': instance.voterImageUrl,
    };

const _$VoteStatusEnumMap = {
  VoteStatus.pass: 'pass',
  VoteStatus.abstain: 'abstain',
  VoteStatus.fail: 'fail',
};
