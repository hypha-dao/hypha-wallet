import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/services/balance_service.dart';
import 'package:hypha_wallet/core/network/api/services/transaction_history_service.dart';
import 'package:hypha_wallet/core/network/dio_exception.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class BalanceRepository {
  final BalanceService service;

  BalanceRepository({required this.service});

  Future getTransactions({
    required String userAccount,
    required String tokenContract,
    required String symbol,
  }) async {
    try {
      final Response response = await service.getTransactions(
        userAccount: userAccount,
        symbol: symbol,
        tokenContract: tokenContract,
      );

      // TODO(ggui): Parse the transactions here
      // final List<dynamic> transfers = response.data['actions'].toList();
      // return Result.value(transfers.map((transfer) => TransactionModel.fromJson(transfer)).toList());
      return true;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Result.error(HyphaError.api(errorMessage));
    } catch (e) {
      LogHelper.e(e.toString());
      return Result.error(HyphaError.generic('Error parsing data from transaction history'));
    }
  }
}
