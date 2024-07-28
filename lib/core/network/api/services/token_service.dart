import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/models/network_extension.dart';
import 'package:hypha_wallet/core/network/models/token_value.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class TokenSymbolScope {
  final String symbol;
  final String scope;
  final String tokenContract;

  TokenSymbolScope({required this.symbol, required this.scope, required this.tokenContract});
}

class TokenService {
  final NetworkingManager networkingManager;

  TokenService(this.networkingManager);

  Future<Result<TokenValue, HyphaError>> getTokenBalance({
    required UserProfileData user,
    required String tokenContract,
    required String symbol,
  }) async {
    LogHelper.d('getTokenBalance: $tokenContract');
    try {
      final requestBody = {
        'account': user.accountName,
        'code': tokenContract,
        'symbol': symbol,
      };

      final Response<List> res = await user.network.manager.post<List>(
        Endpoints.getCurrencyBalance,
        data: requestBody,
      );

      if (res.data == null) {
        LogHelper.e('Error fetching balance for token: $symbol');
        return Result.error(HyphaError.generic('Error fetching balance for token: $symbol'));
      }

      if (res.data!.isEmpty) {
        /// No balance for this token; 4.91 HYPHA
        return Result.value(TokenValue.fromString('0.00 $symbol', tokenContract));
      }
      final tokenString = res.data![0];
      LogHelper.d('TOken Balance response: $tokenString');
      return Result.value(TokenValue.fromString(tokenString, tokenContract));
    } catch (error, stackTrace) {
      LogHelper.e('Error getTokenBalance for $symbol', stacktrace: stackTrace, error: error);
      return Result.error(HyphaError.fromError(error));
    }
  }

  // Future<Result<List<TokenSymbolScope>, HyphaError>> getTokenSymbols({
  //   required String tokenContract,
  // }) async {
  //   try {
  //     final requestBody = {
  //       'code': tokenContract,
  //       'table': 'stat',
  //       'lower_bound': '',
  //       'upper_bound': '',
  //       'limit': 1000,
  //       'reverse': false,
  //     };

  //     final res = await networkingManager.post(Endpoints.getTableScopes, data: requestBody);
  //     final List<Map<String, dynamic>> list = List<Map<String, dynamic>>.from(res.data['rows']);
  //     final tokenSymbolScopes = List<TokenSymbolScope>.from(list.map((e) {
  //       /// This converts a name type into an int type and subsequently converts
  //       /// the int type into a symbol. Like magic.
  //       final scope = e['scope'];
  //       final eosName = EosName.from(scope);
  //       final eosSymbol = EosSymbol(eosName.value);
  //       return TokenSymbolScope(symbol: eosSymbol.toString(), scope: scope, tokenContract: tokenContract);
  //     }));
  //     return Result.value(tokenSymbolScopes);
  //   } catch (error, stackTrace) {
  //     LogHelper.e('Error getTokenSymbols', stacktrace: stackTrace, error: error);
  //     print('Error getTokenSymbols $error');
  //     return Result.error(HyphaError.fromError(error));
  //   }
  // }

  // Future<Result<SymbolModel, HyphaError>> getCurrencySymbol({
  //   required String tokenContract,
  //   required String symbol,
  // }) async {
  //   try {
  //     final requestBody = {
  //       'json': true,
  //       'code': tokenContract,
  //       'symbol': symbol
  //     };

  //     final res = await networkingManager.post(Endpoints.getCurrencyStats, data: requestBody);
  //     final json = res.data;
  //     // flutter: res: {HYPHA: {supply: 47738747.41 HYPHA, max_supply: -1.00 HYPHA, issuer: dao.hypha}}
  //     final symbolString = json[symbol]['max_supply'];
  //     final tokenModel = TokenModel.fromString(symbolString, tokenContract);
  //     return Result.value(tokenModel.symbol);
  //   } catch (error, stackTrace) {
  //     LogHelper.e('Error getTokenSymbols', stacktrace: stackTrace, error: error);
  //     return Result.error(HyphaError.fromError(error));
  //   }
  // }
}
