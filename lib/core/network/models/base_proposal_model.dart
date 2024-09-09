import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
abstract class BaseProposalModel {
  @JsonKey(name: 'docId')
  final String id;

  @JsonKey(name: 'dao')
  final String? daoName;

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

  @JsonKey(name: 'creator')
  final String creator;

  @JsonKey(name: 'vote')
  final List<VoteModel>? votes;

  BaseProposalModel({
    required this.id,
    this.daoName,
    this.commitment,
    this.title,
    this.unity,
    this.quorum,
    this.expiration,
    required this.creator,
    this.votes,
  });
}
