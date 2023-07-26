import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/services/transaction_history_service.dart';
import 'package:hypha_wallet/core/network/dio_exception.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class TransactionHistoryRepository {
  final TransactionHistoryService service;

  TransactionHistoryRepository({required this.service});

  Future<Result<List<TransactionModel>, HyphaError>> getTransactions(String userAccount, bool transferOnly) async {
    try {
      final Response response = transferOnly
          ? await service.getTransferTransactions(userAccount)
          : await service.getAllTransactions(userAccount);
      final List<dynamic> transfers = response.data['actions'].toList();
      return Result.value(transfers.map((transfer) => TransactionModel.fromJson(transfer)).toList());
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Result.error(HyphaError.api(errorMessage));
    } catch (e) {
      LogHelper.e(e.toString());
      return Result.error(HyphaError.generic('Error parsing data from transaction history'));
    }
  }
}
