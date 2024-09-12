import 'package:freezed_annotation/freezed_annotation.dart';
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
    super.expiration,
    super.creator,
    super.votes,
  });
  factory ProposalModel.fromJson(Map<String, dynamic> json) => _$ProposalModelFromJson(json);
}
