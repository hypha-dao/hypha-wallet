import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/services/transaction_history_service.dart';
import 'package:hypha_wallet/core/network/dio_exception.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class TransactionHistoryRepository {
  final TransactionHistoryService service;

  TransactionHistoryRepository({required this.service});

  Future<Result<List<TransactionModel>, HyphaError>> getTransactions(UserProfileData user, bool transferOnly,
      {useV1History = false}) async {
    try {
      final Response response = useV1History
          ? await service.getAllTransactionsV1History(user)
          : transferOnly
              ? await service.getTransferTransactions(user)
              : await service.getAllTransactions(user);
      final List<dynamic> actions = response.data['actions'].toList();
      final List<TransactionModel> transactions = useV1History
          ? actions.map((action) => TransactionModel.fromJsonV1History(action)).toList()
          : actions.map((action) => TransactionModel.fromJson(action)).toList();
      // sort descending, newest first
      transactions.sort((a, b) => b.timestamp.compareTo(a.timestamp));
      return Result.value(transactions);
    } on DioException catch (e, stackTrace) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      LogHelper.e(errorMessage, stacktrace: stackTrace, error: e);
      return Result.error(HyphaError.api(errorMessage));
    } catch (e, stackTrace) {
      LogHelper.e('Error parsing data from transaction history', error: e, stacktrace: stackTrace);
      return Result.error(HyphaError.generic('Error parsing data from transaction history'));
    }
  }
}
