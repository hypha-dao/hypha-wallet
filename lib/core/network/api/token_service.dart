import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/models/token_value.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class TokenService {
  final NetworkingManager networkingManager;

  TokenService(this.networkingManager);

  Future<Result<TokenValue, HyphaError>> getTokenBalance({
    required String userAccount,
    required String tokenContract,
    required String symbol,
  }) async {
    try {
      final requestBody = '''
      { 
        "account": "$userAccount",
        "code": "$tokenContract",
        "symbol": "$symbol",
      }''';
      final res = await networkingManager.post(Endpoints.getCurrencyBalance, data: requestBody);
      final tokenString = res.data[0];
      return Result.value(TokenValue.fromString(tokenString, tokenContract));
    } catch (error) {
      return Result.error(HyphaError.fromError(error));
    }
  }
}
