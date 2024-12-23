import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/actions/vote_action_factory.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/proposals/details/usecases/cast_vote_use_case_input.dart';

class CastVoteUseCase extends InputUseCase<Result<String, HyphaError>, CastVoteUseCaseInput> {
  final AuthRepository _authRepository;
  final EOSService _eosService;
  final RemoteConfigService _remoteConfigService;

  CastVoteUseCase(this._authRepository, this._eosService, this._remoteConfigService);

  @override
  Future<Result<String, HyphaError>> run(CastVoteUseCaseInput input) async {
    final UserProfileData user = _authRepository.authDataOrCrash.userProfileData;
    final String daoContract = _remoteConfigService.daoContract(network: user.network);

    final EOSAction eosAction = VoteActionFactory.voteAction(daoContract, user.accountName, input.proposalId, input.voteStatus);

    try {
      final castVoteResult = await _eosService.runAction(signer: user, action: eosAction);
      return Result.value(castVoteResult.asValue!.value);
    } catch (e, stackTrace) {
      LogHelper.e('Error casting vote', error: e, stacktrace: stackTrace);
      return Result.error(HyphaError.fromError(e));
    }
  }
}
