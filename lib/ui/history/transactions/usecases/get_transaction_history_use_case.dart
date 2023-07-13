import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/core/network/repository/transaction_history_repository.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class GetTransactionHistoryUseCase extends InputUseCase<Result<List<TransactionModel>, HyphaError>, bool> {
  final TransactionHistoryRepository _repository;
  final HyphaSharedPrefs _appSharedPrefs;

  GetTransactionHistoryUseCase(this._repository, this._appSharedPrefs);

  @override
  // ignore: avoid_renaming_method_parameters
  Future<Result<List<TransactionModel>, HyphaError>> run(bool transferOnly) async {
    final user = await _appSharedPrefs.getUserProfileData();
    return _repository.getTransactions(user!.accountName, transferOnly);
  }
}
