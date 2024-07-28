import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/services/graphql_service.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class DaoService {
  final GraphQLService _graphQLService;

  const DaoService(this._graphQLService);

  /// Get dao's for this account
  Future<Result<List<DaoData>, HyphaError>> getDaos({
    required UserProfileData user,
  }) async {
    final String accountName = user.accountName;
    final String query =
        '{"query":"query profileDhos(\$username: String!, \$first: Int, \$offset: Int) { getMember(details_member_n: \$username) { docId __typename createdDate details_member_n memberofAggregate { count } memberof(first: \$first, offset: \$offset) { ... on Dao { docId details_daoName_n settings { settings_daoTitle_s settings_isHypha_i settings_logo_s settings_daoUrl_s } } } applicantof { ... on Dao { details_daoName_n settings { settings_daoTitle_s settings_daoUrl_s } } } } }","variables":{"username":"$accountName"}}';

    final result = await _graphQLService.graphQLQuery(network: user.network, query: query);

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

    final result = await _graphQLService.graphQLQuery(network: network, query: query);

    if (result.isValue) {
      final Map<String, dynamic> response = result.valueOrCrash;
      final List<dynamic> daos = response['data']['queryDao'];
      return Result.value(daos.isNotEmpty ? DaoData.fromJson(daos[0]) : null);
    } else {
      return Result.error(result.asError!.error);
    }
  }
}
