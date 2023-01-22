import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

class TransactionHistoryService {
  final NetworkingManager networkingManager;

  TransactionHistoryService(this.networkingManager);

  // TODO(Gery): This needs pagination
  Future<Response> getTransactions(String userAccount) async {
    final res = await networkingManager.get(Endpoints.getTransactionHistory, queryParameters: {
      'account': userAccount,
      'skip': 0,
      'limit': 100,
      'sort': 'desc',
    });
    LogHelper.d('Result $res');
    return res;
  }
}
