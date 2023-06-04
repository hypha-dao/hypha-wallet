import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

class BalanceService {
  final NetworkingManager networkingManager;

  BalanceService(this.networkingManager);

  Future<Response> getTransactions({
    required String userAccount,
    required String tokenContract,
    required String symbol,
  }) async {
    LogHelper.d('[http] get seeds getTokenBalance $userAccount for $symbol');

    final String request = '''
    {
      "code":"$tokenContract",
      "account":"$userAccount",
      "symbol":"$symbol"
    }
    ''';

    // final balanceURL = Uri.parse('$baseURL/v1/chain/get_currency_balance');
    //
    // //  http
    // //     .post(balanceURL, headers: headers, body: request)
    // //     .then((http.Response response) => mapHttpResponse<BalanceModel>(response, (dynamic body) {
    // //   return BalanceModel.fromJson(body);
    // // })


    final res = await networkingManager.post(Endpoints.getCurrencyBalance, data: request);

    return res;
  }
}
