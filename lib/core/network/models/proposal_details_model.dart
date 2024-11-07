import 'package:hypha_wallet/core/extension/vote_tally_extension.dart';
import 'package:hypha_wallet/core/network/models/base_proposal_model.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'proposal_details_model.g.dart';

@JsonSerializable()
class ProposalDetailsModel extends BaseProposalModel {
  @JsonKey(name: 'details_description_s')
  final String? description;

  ProposalDetailsModel(
      {required super.id,
      super.dao,
      super.commitment,
      super.title,
      super.unity,
      super.quorum,
        super.pastUnity,
      super.pastQuorum,
      super.expiration,
      super.creator,
      super.votes,
      this.description,
      });

  factory ProposalDetailsModel.fromJson(Map<String, dynamic> json) {
    json['dao'] = null;
    json['creator'] = null;

    json.calculateUnityAndQuorum();

    return _$ProposalDetailsModelFromJson(json);
  }

  List<VoteModel> fetchVotersByStatus(VoteStatus voteStatus) =>
      votes
          ?.where((vote) => vote.voteStatus == voteStatus)
          .map((vote) => vote)
          .toList() ??
      [];
}
