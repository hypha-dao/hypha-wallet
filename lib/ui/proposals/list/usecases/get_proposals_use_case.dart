import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/core/network/repository/proposal_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/proposals/list/usecases/get_proposals_use_case_input.dart';

class GetProposalsUseCase extends InputUseCase<Result<List<ProposalModel>, HyphaError>, GetProposalsUseCaseInput> {
  final AuthRepository _authRepository;
  final ProposalRepository _proposalRepository;

  GetProposalsUseCase(this._authRepository, this._proposalRepository);

  @override
  Future<Result<List<ProposalModel>, HyphaError>> run(GetProposalsUseCaseInput input) async => _proposalRepository.getProposals(_authRepository.authDataOrCrash.userProfileData, input);
}
