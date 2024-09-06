import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/proposal_model_extensions.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/services/proposal_service.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class ProposalRepository {
  final ProposalService _proposalService;

  ProposalRepository(this._proposalService);

  Future<Result<List<ProposalModel>, HyphaError>> getProposals(UserProfileData user, List<DaoData> daos) async {
    final List<Future<Result<Map<String, dynamic>, HyphaError>>> futures = daos.map((dao) {
      return _proposalService.getProposals(user, dao.docId);
    }).toList();

    final List<Result<Map<String, dynamic>, HyphaError>> futureResults = await Future.wait(futures);

    final List<ProposalModel> allProposals = [];

    for (final Result<Map<String, dynamic>, HyphaError> result in futureResults) {

      if (result.isValue) {
        final Map<String, dynamic> response = result.asValue!.value;

        if (response['errors'] != null) {
          LogHelper.e('GraphQL query failed', error: response['errors']);
          return Result.error(HyphaError.api('GraphQL query failed'));
        }

        try {
          final List<ProposalModel> proposals = _parseProposalsFromResponse(response);
          allProposals.addAll(proposals);
        } catch (e, stackTrace) {
          LogHelper.e('Error parsing data into proposal model', error: e, stacktrace: stackTrace);
          return Result.error(HyphaError.generic('Error parsing data into proposal model'));
        }
      } else {
        LogHelper.e('GraphQL query failed', error: result.asError!.error);
        return Result.error(result.asError!.error);
      }
    }

    sortProposals(allProposals);
    return Result.value(allProposals);
  }

  List<ProposalModel> _parseProposalsFromResponse(Map<String, dynamic> response) {
    final List<dynamic> proposalsData = response['data']['queryDao'];
    return proposalsData.expand((dao) {
      final String daoName = dao['details_daoName_n'];
      final List<dynamic> proposals = dao['proposal'] as List<dynamic>;
      return proposals.map((dynamic proposal) {
        return ProposalModel.fromJson({...{'daoName': daoName}, ...proposal});
      });
    }).toList();
  }

  void sortProposals(List<ProposalModel> proposals) {
    proposals.sort((a, b) {
      final daoNameComparison = a.daoName.compareTo(b.daoName);
      if (daoNameComparison != 0) {
        return daoNameComparison;
      }

      final isAExpired = a.expiration != null && a.isExpired();
      final isBExpired = b.expiration != null && b.isExpired();

      if (isAExpired && !isBExpired) {
        return 1;
      } else if (!isAExpired && isBExpired) {
        return -1;
      }

      return a.expiration?.compareTo(b.expiration ?? DateTime.now()) ?? 0;
    });
  }
}
