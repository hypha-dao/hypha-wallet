import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/proposal_type_extension.dart';
import 'package:hypha_wallet/core/extension/string_extension.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/proposal_creation_model.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class PublishProposalUseCase extends InputUseCase<Result<String, HyphaError>, ProposalCreationModel> {
  final AuthRepository _authRepository;
  final EOSService _eosService;
  final RemoteConfigService _remoteConfigService;

  PublishProposalUseCase(this._authRepository, this._eosService, this._remoteConfigService);

  @override
  Future<Result<String, HyphaError>> run(ProposalCreationModel input) async {
    try {
      final UserProfileData user = _authRepository.authDataOrCrash.userProfileData;
      final String daoContract = _remoteConfigService.daoContract(network: user.network);

      List<Map<String, dynamic>> content = [];

      switch (input.type) {
        case ProposalType.Policy:
          content = [
            {
              'label': 'content_group_label',
              'value': ['string', 'details']
            },
            {
              'label': 'recipient',
              'value': ['name', user.accountName]
            },
            {
              'label': 'title',
              'value': ['string', input.title]
            },
            {
              'label': 'description',
              'value': ['string', input.details!.toMarkdown]
            },
          ];
          break;

        default:
          throw Exception('Invalid proposal type');
      }

      if (content.isNotEmpty) {
        final EOSAction eosAction = EOSAction()
          ..account = daoContract
          ..name = 'propose'
          ..data = {
            'dao_id': input.dao!.docId,
            'proposer': user.accountName,
            'proposal_type': input.type!.string,
            'content_groups': [content],
            'publish': true,
          };

        final result = await _eosService.runAction(signer: _authRepository.authDataOrCrash.userProfileData, action: eosAction);

        return Result.value(result.asValue!.value);
      }

      return Result.error(HyphaError.unknown('content is empty'));
    } catch (error, stackTrace) {
      LogHelper.e('Error PublishProposalUseCase', stacktrace: stackTrace, error: error);
      return Result.error(HyphaError.fromError(error));
    }
  }
}
