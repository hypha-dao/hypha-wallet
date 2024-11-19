import 'package:hypha_wallet/core/network/models/proposal_creation_model.dart';

extension ProposalCreationModelExtension on ProposalCreationModel {
  String proposalTypeToString() {
    switch (type) {
      case ProposalType.policy:
        return 'policy';
      default:
        return 'unknown';
    }
  }
}
