import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/models/network_extension.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

class TransactionHistoryService {
  final NetworkingManager networkingManager;

  TransactionHistoryService(this.networkingManager);

  // TODO(Gery): This needs pagination
  Future<Response> getAllTransactions(UserProfileData user) async {
    final res = await user.network.manager.get(Endpoints.getTransactionHistory, queryParameters: {
      'account': user.accountName,
      'skip': 0,
      'limit': 100,
      'sort': 'desc',
    });
    return res;
  }

  Future<Response> getTransferTransactions(UserProfileData user) async {
    final res = await user.network.manager.get(Endpoints.getTransactionHistory, queryParameters: {
      'account': user.accountName,
      'skip': 0,
      'limit': 100,
      'sort': 'desc',
      'act.name': 'transfer',
    });
    return res;
  }
}
