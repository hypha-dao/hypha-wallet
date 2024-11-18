import 'package:hypha_wallet/core/network/models/base_proposal_model.dart';

enum ProposalType { policy }

class ProposalCreationModel extends BaseProposalModel {
  final String? details;
  final ProposalType type;

  ProposalCreationModel({super.id, super.title, this.details, super.dao, this.type = ProposalType.policy});

  ProposalCreationModel copyWith(Map<String, dynamic> updates) {
    return ProposalCreationModel(
      id: updates.containsKey('id') ? updates['id'] : id,
      title: updates.containsKey('title') ? updates['title'] : title,
      dao: updates.containsKey('dao') ? updates['dao'] : dao,
      details: updates.containsKey('details') ? updates['details'] : details,
      type: updates.containsKey('type') ? updates['type'] : type,
    );
  }
}
