import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

class TransactionHistoryService {
  final NetworkingManager networkingManager;
  final RemoteConfigService remoteConfigService;

  TransactionHistoryService(this.networkingManager, this.remoteConfigService);

  // TODO(Gery): This needs pagination
  Future<Response> getAllTransactions(UserProfileData user) async {
    final endpointUrl = remoteConfigService.v2HistoryEndpoint(user.network) + Endpoints.getTransactionHistory;
    final res = await networkingManager.get(endpointUrl, queryParameters: {
      'account': user.accountName,
      'skip': 0,
      'limit': 100,
      'sort': 'desc',
    });
    return res;
  }

  Future<Response> getTransferTransactions(UserProfileData user) async {
    final endpointUrl = remoteConfigService.v2HistoryEndpoint(user.network) + Endpoints.getTransactionHistory;
    final res = await networkingManager.get(endpointUrl, queryParameters: {
      'account': user.accountName,
      'skip': 0,
      'limit': 100,
      'sort': 'desc',
      'act.name': 'transfer',
    });
    return res;
  }

  Future<Response> getAllTransactionsV1History(UserProfileData user) async {
    final endpointUrl = remoteConfigService.v1HistoryEndpoint(user.network) + Endpoints.getTransactionHistory;
    final res = await networkingManager.get(endpointUrl, queryParameters: {
      'account_name': user.accountName,
      'pos': -1,
      'offset': -100,
    });
    return res;
  }
}
