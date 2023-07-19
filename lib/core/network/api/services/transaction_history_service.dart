import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

class TransactionHistoryService {
  final NetworkingManager networkingManager;

  TransactionHistoryService(this.networkingManager);

  // TODO(Gery): This needs pagination
  Future<Response> getAllTransactions(String userAccount) async {
    final res = await networkingManager.get(Endpoints.getTransactionHistory, queryParameters: {
      'account': userAccount,
      'skip': 0,
      'limit': 100,
      'sort': 'desc',
    });
    return res;
  }

  Future<Response> getTransferTransactions(String userAccount) async {
    final res = await networkingManager.get(Endpoints.getTransactionHistory, queryParameters: {
      'account': userAccount,
      'skip': 0,
      'limit': 100,
      'sort': 'desc',
      'act.name':'transfer',
    });
    return res;
  }
}
