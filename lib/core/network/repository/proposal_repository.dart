import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/base_proposal_model_extension.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/services/proposal_service.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/proposal_details_model.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/profile_repository.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class ProposalRepository {
  final ProposalService _proposalService;
  final ProfileService _profileService;

  ProposalRepository(this._proposalService, this._profileService);

  Future<Result<List<ProposalModel>, HyphaError>> getProposals(UserProfileData user, List<DaoData> daos) async {
    final List<Future<Result<Map<String, dynamic>, HyphaError>>> futures = daos.map((dao) {
      return _proposalService.getProposals(user, dao.docId);
    }).toList();

    final List<Result<Map<String, dynamic>, HyphaError>> futureResults = await Future.wait(futures);

    final List<ProposalModel> allProposals = [];

    for (int i = 0; i < futureResults.length; i++) {
      final Result<Map<String, dynamic>, HyphaError> result = futureResults[i];

      if (result.isValue) {
        final Map<String, dynamic> response = result.asValue!.value;

        if (response['errors'] != null) {
          LogHelper.e('GraphQL query failed', error: response['errors']);
          return Result.error(HyphaError.api('GraphQL query failed'));
        }

        try {
          final List<ProposalModel> proposals = _parseProposalsFromResponse(response, daos[i]);
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

  List<ProposalModel> _parseProposalsFromResponse(Map<String, dynamic> response, DaoData daoData) {
    final List<dynamic> proposalsData = response['data']['queryDao'];
    return proposalsData.expand((dao) {
      final List<dynamic> proposals = dao['proposal'] as List<dynamic>;
      return proposals.map((dynamic proposal) {
        return ProposalModel.fromJson({...{'dao': daoData.toJson()}, ...proposal});
      });
    }).toList();
  }

  void sortProposals(List<ProposalModel> proposals) {
    proposals.sort((a, b) {
      final int daoNameComparison = (a.dao?.settingsDaoTitle ?? '').compareTo(b.dao?.settingsDaoTitle ?? '');
      if (daoNameComparison != 0) {
        return daoNameComparison;
      }

      final bool isAExpired = a.expiration != null && a.isExpired();
      final bool isBExpired = b.expiration != null && b.isExpired();

      if (isAExpired && !isBExpired) {
        return 1;
      } else if (!isAExpired && isBExpired) {
        return -1;
      }

      return a.expiration?.compareTo(b.expiration ?? DateTime.now()) ?? 0;
    });
  }
  Future<Result<ProposalDetailsModel, HyphaError>> getProposalDetails(
      String proposalId, UserProfileData user) async {
    final Result<Map<String, dynamic>, HyphaError> result =
    await _proposalService.getProposalDetails(proposalId, user);
    if (result.isValue) {
      if (result.asValue!.value['errors'] != null) {
        LogHelper.e('GraphQL query failed',
            error: result.asValue!.value['errors']);
        return Result.error(HyphaError.api('GraphQL query failed'));
      }

      try {
        final Map<String, dynamic> response = result.valueOrCrash;
        final ProposalDetailsModel proposalDetails =
        ProposalDetailsModel.fromJson(response['data']['getDocument']);
        if (proposalDetails.votes != null) {
          for (int i = 0; i < proposalDetails.votes!.length; i++) {
            final Result<ProfileData, HyphaError> voterData =
            await _profileService
                .getProfile(proposalDetails.votes![i].voter);
            if (voterData.isValue) {
              proposalDetails.votes![i].voterImageUrl =
                  voterData.asValue!.value.avatarUrl;
            }
          }
        }
        return Result.value(proposalDetails);
      } catch (e, stackTrace) {
        LogHelper.e('Error parsing data into proposal details model',
            error: e, stacktrace: stackTrace);
        return Result.error(HyphaError.generic(
            'Error parsing data into details proposal model'));
      }
    } else {
      LogHelper.e('GraphQL query failed', error: result.asError!.error);
      return Result.error(result.asError!.error);
    }
  }
}