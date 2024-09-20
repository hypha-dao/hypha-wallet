import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/core/network/repository/proposal_repository.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/filter_status.dart';

// TODO(Zied): add 'extends' (check)
class GetProposalsUseCase {
  final AuthRepository _authRepository;
  final ProposalRepository _proposalRepository;

  GetProposalsUseCase(this._authRepository, this._proposalRepository);

  Future<Result<List<ProposalModel>, HyphaError>> run(List<DaoData> daos, FilterStatus filterStatus) async => _proposalRepository.getProposals(_authRepository.authDataOrCrash.userProfileData, daos, filterStatus);
}
