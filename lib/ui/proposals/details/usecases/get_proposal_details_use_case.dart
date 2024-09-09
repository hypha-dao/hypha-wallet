import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/proposal_details_model.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/core/network/repository/proposal_repository.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class GetProposalDetailsUseCase {
  final AuthRepository _authRepository;
  final ProposalRepository _proposalRepository;
  GetProposalDetailsUseCase(this._authRepository, this._proposalRepository);

  Future<Result<ProposalDetailsModel, HyphaError>> run(String proposalId) async => _proposalRepository.getProposalDetails(proposalId,_authRepository.authDataOrCrash.userProfileData);
}