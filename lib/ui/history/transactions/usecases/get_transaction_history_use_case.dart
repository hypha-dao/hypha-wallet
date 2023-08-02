import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/core/network/repository/transaction_history_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class GetTransactionHistoryUseCase extends InputUseCase<Result<List<TransactionModel>, HyphaError>, bool> {
  final TransactionHistoryRepository _repository;
  final AuthRepository _authRepository;

  GetTransactionHistoryUseCase(this._repository, this._authRepository);

  @override
  // ignore: avoid_renaming_method_parameters
  Future<Result<List<TransactionModel>, HyphaError>> run(bool transferOnly) async {
    final user = _authRepository.authDataOrCrash;
    return _repository.getTransactions(user.userProfileData, transferOnly);
  }
}
