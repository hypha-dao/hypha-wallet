import 'package:hypha_wallet/core/network/models/base_proposal_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'proposal_model.g.dart';

@JsonSerializable()
class ProposalModel extends BaseProposalModel{
  ProposalModel({
    required super.id,
    required super.creator,
    super.daoName,
    super.commitment,
    super.title,
    super.unity,
    super.quorum,
    super.expiration,
    super.votes,
  });
  factory ProposalModel.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('original')) {
      json['details_title_s'] = json['original'][0]['details_title_s'];
    }
    return _$ProposalModelFromJson(json);
  }
}
