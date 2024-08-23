import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/services/proposal_service.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class ProposalRepository {
  final ProposalService _proposalService;

  ProposalRepository(this._proposalService);

  Future<Result<List<ProposalModel>, HyphaError>> getProposals(UserProfileData user) async {
    final Result<Map<String, dynamic>, HyphaError> result = await _proposalService.getProposals(user);

    if (result.isValue) {
      if (result.asValue!.value['errors'] != null) {
        LogHelper.e('GraphQL query failed',error: result.asValue!.value['errors']);
        return Result.error(HyphaError.api('GraphQL query failed'));
      }

      try {
        final Map<String, dynamic> response = result.valueOrCrash;
        final List<dynamic> proposalsData = response['data']['queryDao'];
        final List<ProposalModel> proposals = proposalsData.expand((dao) {
          final String daoName = dao['details_daoName_n'];
          final List<dynamic> proposals = dao['proposal'] as List<dynamic>;

          return proposals.map((dynamic proposal) {
            return ProposalModel.fromJson({...{'daoName': daoName}, ...proposal});
          });
        }).toList();

        return Result.value(proposals);
      } catch (e, stackTrace) {
        LogHelper.e('Error parsing data into proposal model', error: e, stacktrace: stackTrace);
        return Result.error(HyphaError.generic('Error parsing data into proposal model'));
      }
    } else {
      LogHelper.e('GraphQL query failed', error: result.asError!.error);
      return Result.error(result.asError!.error);
    }
  }
}