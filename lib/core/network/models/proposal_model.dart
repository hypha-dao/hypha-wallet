import 'package:hypha_wallet/core/network/models/base_proposal_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class ProposalModel extends BaseProposalModel{
  ProposalModel({
    required super.id,
    super.dao,
    super.commitment,
    super.title,
    super.unity,
    super.quorum,
    super.expiration,
    super.creator,
    super.votes,
  });
  factory ProposalModel.fromJson(Map<String, dynamic> json) {
    return ProposalModel(
        id: json['docId'] as String,
        creator: json['creator'] == null ? null : ProfileData.fromJson(json['creator'] as Map<String, dynamic>),
    dao: null,
    commitment: (json['details_timeShareX100_i'] as num?)?.toInt(),
    title: json['details_title_s'] as String?,
    unity: (json['details_ballotAlignment_i'] as num?)?.toInt(),
    quorum: (json['details_ballotQuorum_i'] as num?)?.toInt(),
    expiration: json['ballot_expiration_t'] == null
    ? null
        : DateTime.parse(json['ballot_expiration_t'] as String),
    votes: (json['vote'] as List<dynamic>?)
        ?.map((e) => VoteModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    );
  }
}
