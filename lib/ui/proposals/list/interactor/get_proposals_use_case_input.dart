import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/filter_status.dart';

class GetProposalsUseCaseInput {
  final List<DaoData> daos;
  final FilterStatus filterStatus;
  final int first;
  final int offset;

  GetProposalsUseCaseInput(this.daos, this.filterStatus, this.first, this.offset);
}
