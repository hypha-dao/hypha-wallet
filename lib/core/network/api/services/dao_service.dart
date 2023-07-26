import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

class DaoService {
  final NetworkingManager networkingManager;
  final RemoteConfigService remoteConfigService;

  DaoService({required this.networkingManager, required this.remoteConfigService});

  Future<List<DaoData>> getDaos({
    required String accountName,
    required Network network,
  }) async {
    final String query =
        '{"query":"query profileDhos(\$username: String!, \$first: Int, \$offset: Int) { getMember(details_member_n: \$username) { docId __typename createdDate details_member_n memberofAggregate { count } memberof(first: \$first, offset: \$offset) { ... on Dao { docId details_daoName_n settings { settings_daoTitle_s settings_isHypha_i settings_logo_s settings_daoUrl_s } } } applicantof { ... on Dao { details_daoName_n settings { settings_daoTitle_s settings_daoUrl_s } } } } }","variables":{"username":"$accountName"}}';

    final url = remoteConfigService.graphQLEndpoint(network: network);
    try {
      final res = await networkingManager.post(url, data: query);
      final Map<String, dynamic> response = res.data;
      final List<dynamic> memberOfList = response['data']['getMember']['memberof'];
      final List<DaoData> daos = memberOfList.map((member) {
        return DaoData.fromJson(member);
      }).toList();
      return daos;
    } catch (error) {
      print('Error accessing graphQL');
      print(error);
      if (error is DioException) {
        final dioError = error;
        print('message: ${dioError.message}');
        print('status code: ${dioError.response?.statusCode}');
        print('message: ${dioError.response?.statusMessage}');
        print('dioError: $dioError');
      }
      rethrow;
    }
  }
}
