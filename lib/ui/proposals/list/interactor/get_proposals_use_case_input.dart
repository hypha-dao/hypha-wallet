import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/filter_status.dart';

class GetProposalsUseCaseInput {
  final List<DaoData> daos;
  final FilterStatus filterStatus;

  GetProposalsUseCaseInput(this.daos, this.filterStatus);
}
