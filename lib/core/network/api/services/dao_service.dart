import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/services/graphql_service.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class DaoService {
  final GraphQLService _graphQLService;
  final RemoteConfigService _remoteConfigService;

  const DaoService(this._graphQLService, this._remoteConfigService);

  /// Get dao's for this account
  Future<Result<List<DaoData>, HyphaError>> getDaos({
    required UserProfileData user,
  }) async {
    final String accountName = user.accountName;
    final String query =
        '{"query":"query profileDhos(\$username: String!, \$first: Int, \$offset: Int) { getMember(details_member_n: \$username) { docId __typename createdDate details_member_n memberofAggregate { count } memberof(first: \$first, offset: \$offset) { ... on Dao { docId details_daoName_n settings { settings_daoTitle_s settings_isHypha_i settings_logo_s settings_daoUrl_s } } } applicantof { ... on Dao { details_daoName_n settings { settings_daoTitle_s settings_daoUrl_s } } } } }","variables":{"username":"$accountName"}}';

    final url = _remoteConfigService.graphQLEndpoint(network: user.network);
    final result = await _graphQLService.query(url: url, query: query);

    if (result.isValue) {
      final Map<String, dynamic> response = result.valueOrCrash;
      final List<dynamic> memberOfList = response['data']['getMember']?['memberof'] ?? [];
      final List<DaoData> daos = memberOfList.map((member) {
        return DaoData.fromJson(member);
      }).toList();
      return Result.value(daos);
    } else {
      return Result.error(result.asError!.error);
    }
  }

  Future<Result<DaoData?, HyphaError>> getDaoById({
    required Network network,
    required String daoId,
  }) async {
    final String query =
        '{"query":"query getDaoById(\$docId: String!) { queryDao(filter: {docId: {eq: \$docId}}) {docId details_daoName_n settings { settings_daoTitle_s, settings_daoDescription_s, settings_logo_s, settings_daoUrl_s } } }", "variables": {"docId": "$daoId"} } ';

    final url = _remoteConfigService.graphQLEndpoint(network: network);
    final result = await _graphQLService.query(url: url, query: query);

    if (result.isValue) {
      final Map<String, dynamic> response = result.valueOrCrash;
      final List<dynamic> daos = response['data']['queryDao'];
      return Result.value(daos.isNotEmpty ? DaoData.fromJson(daos[0]) : null);
    } else {
      return Result.error(result.asError!.error);
    }
  }
}
