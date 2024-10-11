import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/extension/vote_tally_extension.dart';
import 'package:hypha_wallet/core/network/models/base_proposal_model.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

part 'proposal_model.g.dart';

@JsonSerializable()
class ProposalModel extends BaseProposalModel{
  ProposalModel({
    required super.id,
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
  });

  factory ProposalModel.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('original')) {
      json['details_title_s'] = json['original'][0]['details_title_s'];
    }

    json.calculateUnityAndQuorum();

    return _$ProposalModelFromJson(json);
  }
}
