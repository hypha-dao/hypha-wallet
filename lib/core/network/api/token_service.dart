import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

class TokenService {
  final NetworkingManager networkingManager;

  TokenService(this.networkingManager);

  Future<Response> getTokenBalance({
    required String userAccount,
    required String tokenContract,
    required String symbol,
  }) async {
    final requestBody = '''
    { 
      "account": "$userAccount",
      "code": "$tokenContract",
      "symbol": "$symbol",
    }''';
    // ignore: unused_local_variable
    final res = await networkingManager.post(Endpoints.getCurrencyBalance, data: requestBody);
    return res;
  }
}
