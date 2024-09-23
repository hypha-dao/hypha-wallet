import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/dao_proposal_count_entity.dart';

class AggregateDaoProposalCountsUseCase {
  List<DaoProposalCountEntity> run(List<ProposalModel> proposals, List<DaoData> daos) {
    final Map<DaoData, int> daoProposalCounts = {};

    for (final ProposalModel proposal in proposals) {
      final DaoData? dao = proposal.dao;

      if (dao != null) {
        daoProposalCounts[dao] = (daoProposalCounts[dao] ?? 0) + 1;
      }
    }

    for (final DaoData dao in daos) {
      if (!daoProposalCounts.containsKey(dao)) {
        daoProposalCounts[dao] = 0;
      }
    }

    return daoProposalCounts.entries
        .map((entry) => DaoProposalCountEntity(entry.key, entry.value))
        .toList();
  }
}
