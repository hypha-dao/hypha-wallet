import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/dao_proposal_count_entity.dart';

class GetDaosFromProposalCountsUseCase {
  List<DaoData> run(List<DaoProposalCountEntity> daoProposalCounts) {
    return daoProposalCounts.map((entity) => entity.dao).toList();
  }
}
