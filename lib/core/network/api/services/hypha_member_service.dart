import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class HyphaMemberService {
  final NetworkingManager networkingManager;
  final RemoteConfigService remoteConfigService;

  HyphaMemberService(this.networkingManager, this.remoteConfigService);

  Future<List<Map<String, dynamic>>> _getTableRows(
    String code,
    String scope,
    String table, {
    bool json = true,
    String tableKey = '',
    String lower = '',
    String upper = '',
    int indexPosition = 1,
    String keyType = '',
    int limit = 10,
    bool reverse = false,
  }) async {
    final result = await networkingManager.post('/v1/chain/get_table_rows', data: {
      'json': json,
      'code': code,
      'scope': scope,
      'table': table,
      'table_key': tableKey,
      'lower_bound': lower,
      'upper_bound': upper,
      'index_position': indexPosition,
      'key_type': keyType,
      'limit': limit,
      'reverse': reverse,
    });
    return result.data['rows'].cast<Map<String, dynamic>>();
  }

  /// Find a hypha accounts starting with prefix
  Future<Result<List<String>, HyphaError>> findHyphaAccounts({
    required String prefix,
    required Network network,
  }) async {
    try {
      final daoContract = remoteConfigService.daoContract(network: network);
      final rows = await _getTableRows(
        daoContract,
        daoContract,
        'members',
        lower: prefix.toLowerCase(),
        upper: prefix.toLowerCase().padRight(12, 'z'),
      );
      final names = List<String>.from(rows.map((e) => e['name']));
      return Result.value(names);
    } catch (error) {
      return Result.error(HyphaError.fromError(error));
    }
  }

  Future<Result<bool, HyphaError>> isMember({
    required String account,
    required Network network,
  }) async {
    try {
      final daoContract = remoteConfigService.daoContract(network: network);
      final rows = await _getTableRows(
        daoContract,
        daoContract,
        'members',
        lower: account,
        upper: account,
        limit: 1,
      );
      return Result.value(rows.isNotEmpty);
    } catch (error) {
      return Result.error(HyphaError.fromError(error));
    }
  }
}
