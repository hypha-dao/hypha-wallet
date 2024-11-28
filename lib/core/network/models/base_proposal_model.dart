import 'package:hypha_wallet/core/extension/proposal_state_extension.dart';
import 'package:hypha_wallet/core/extension/proposal_type_extension.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
abstract class BaseProposalModel {
  @JsonKey(name: 'docId')
  final String? id;

  final ProposalType? type;

  @JsonKey(name: 'details_state_s')
  final ProposalState? state;

  DaoData? dao;

  @JsonKey(name: 'details_timeShareX100_i')
  final int? commitment;

  @JsonKey(name: 'details_title_s')
  final String? title;

  final double? unity;

  final double? quorum;

  @JsonKey(name: 'details_ballotAlignment_i')
  final int? pastUnity;

  @JsonKey(name: 'details_ballotQuorum_i')
  final int? pastQuorum;

  @JsonKey(name: 'details_ballotSupply_a')
  final int? supply;

  @JsonKey(name: 'ballot_expiration_t')
  final DateTime? expiration;

  ProfileData? creator;

  @JsonKey(name: 'vote')
  final List<VoteModel>? votes;

  BaseProposalModel({
    required this.id,
    this.type,
    this.state,
    this.dao,
    this.commitment,
    this.title,
    this.unity,
    this.quorum,
    this.pastUnity,
    this.pastQuorum,
    this.supply,
    this.expiration,
    this.creator,
    this.votes,
  });
}
