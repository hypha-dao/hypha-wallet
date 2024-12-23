import 'package:hypha_wallet/core/extension/proposal_type_extension.dart';
import 'package:hypha_wallet/core/network/models/base_proposal_model.dart';

class ProposalCreationModel extends BaseProposalModel {
  final String? details;
  ProposalCreationModel({super.id, super.title, this.details, super.dao, super.type = ProposalType.Policy});

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
