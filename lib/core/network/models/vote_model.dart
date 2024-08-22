import 'package:json_annotation/json_annotation.dart';

part 'vote_model.g.dart';

enum VoteStatus { pass, abstain, fail, unknown }

@JsonSerializable()
class VoteModel {
  @JsonKey(name: 'vote_voter_n')
  final String voter;

  @JsonKey(name: 'vote_vote_s')
  final VoteStatus voteStatus;

  VoteModel(this.voter, this.voteStatus);

  factory VoteModel.fromJson(Map<String, dynamic> json) => _$VoteModelFromJson(json);
}