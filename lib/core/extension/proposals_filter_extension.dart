import 'package:hypha_wallet/core/network/models/proposal_model.dart';

extension ProposalFilterExtension on List<ProposalModel> {
  List<ProposalModel> filterByDao(List<int> daoIds) {
    return where((proposal) => daoIds.contains(proposal.dao?.docId)).toList();
  }
}
