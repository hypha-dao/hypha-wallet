import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/core/network/repository/user_account_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class CheckAccountInput {
  final String accountName;
  final Network network;
  CheckAccountInput(this.accountName, this.network);
}

class CheckAccountAvailabilityUseCase extends InputUseCase<Result<bool, HyphaError>, CheckAccountInput> {
  final UserAccountRepository _userAccountRepository;

  CheckAccountAvailabilityUseCase(this._userAccountRepository);

  @override
  Future<Result<bool, HyphaError>> run(CheckAccountInput input) async {
    try {
      final result = await _userAccountRepository.isUserAccountAvailable(input.accountName, input.network);
      return Result.value(result);
    } catch (e) {
      return Result.error(HyphaError.api('Error looking for account'));
    }
  }
}
