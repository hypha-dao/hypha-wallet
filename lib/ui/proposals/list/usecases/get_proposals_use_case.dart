import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/core/network/repository/proposal_repository.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class GetProposalsUseCase {
  final AuthRepository _authRepository;
  final ProposalRepository _proposalRepository;

  GetProposalsUseCase(this._authRepository, this._proposalRepository);

  Future<Result<List<ProposalModel>, HyphaError>> run() async => _proposalRepository.getProposals(_authRepository.authDataOrCrash.userProfileData);
}
