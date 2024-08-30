import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'proposal_model.g.dart';

@JsonSerializable()
class ProposalModel {
  @JsonKey(name: 'docId')
  final String id;
  final String daoName;
  @JsonKey(name: 'details_timeShareX100_i')
  final int? commitment;
  @JsonKey(name: 'details_title_s')
  final String? title;
  @JsonKey(name: 'details_ballotAlignment_i')
  final int? unity;
  @JsonKey(name: 'details_ballotQuorum_i')
  final int? quorum;
  @JsonKey(name: 'ballot_expiration_t')
  final DateTime? expiration;
  final String creator;
  @JsonKey(name: 'vote')
  final List<VoteModel>? votes;

  ProposalModel({required this.id, required this.daoName, this.commitment, this.title, this.unity, this.quorum, this.expiration, required this.creator, this.votes});

  factory ProposalModel.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('original')) {
      json['details_title_s'] = json['original'][0]['details_title_s'];
    }
    return _$ProposalModelFromJson(json);
  }

  List<String> fetchVotersByStatus(VoteStatus voteStatus) => votes
        ?.where((vote) => vote.voteStatus == voteStatus)
        .map((vote) => vote.voter)
        .toList() ?? [];
}
