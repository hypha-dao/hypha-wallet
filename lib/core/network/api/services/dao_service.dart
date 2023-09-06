import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class DaoService {
  final NetworkingManager _networkingManager;
  final RemoteConfigService _remoteConfigService;

  const DaoService(this._networkingManager, this._remoteConfigService);

  /// Get dao's for this account
  Future<Result<List<DaoData>, HyphaError>> getDaos({
    required UserProfileData user,
  }) async {
    final String accountName = user.accountName;
    final String query =
        '{"query":"query profileDhos(\$username: String!, \$first: Int, \$offset: Int) { getMember(details_member_n: \$username) { docId __typename createdDate details_member_n memberofAggregate { count } memberof(first: \$first, offset: \$offset) { ... on Dao { docId details_daoName_n settings { settings_daoTitle_s settings_isHypha_i settings_logo_s settings_daoUrl_s } } } applicantof { ... on Dao { details_daoName_n settings { settings_daoTitle_s settings_daoUrl_s } } } } }","variables":{"username":"$accountName"}}';

    final url = _remoteConfigService.graphQLEndpoint(network: user.network);
    try {
      final res = await _networkingManager.post(url, data: query);
      final Map<String, dynamic> response = res.data;
      final List<dynamic> memberOfList = response['data']['getMember']?['memberof'] ?? [];
      final List<DaoData> daos = memberOfList.map((member) {
        return DaoData.fromJson(member);
      }).toList();
      return Result.value(daos);
    } catch (error, stackTrace) {
      LogHelper.e('Error accessing graphQL', stacktrace: stackTrace, error: error);
      if (error is DioException) {
        final dioError = error;
        LogHelper.d('message: ${dioError.message}');
        LogHelper.d('status code: ${dioError.response?.statusCode}');
        LogHelper.d('message: ${dioError.response?.statusMessage}');
        LogHelper.d('dioError: $dioError');
      }

      LogHelper.e('Error accessing graphQL');
      LogHelper.e(error.toString());
      return Result.error(HyphaError.fromError(error));
    }
  }
}
