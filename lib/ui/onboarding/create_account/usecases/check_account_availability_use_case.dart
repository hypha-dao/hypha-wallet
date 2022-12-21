import 'package:hypha_wallet/core/network/repository/user_account_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_error.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class CheckAccountAvailabilityUseCase extends InputUseCase<Result<bool, PageError>, String> {
  final UserAccountRepository _userAccountRepository;

  CheckAccountAvailabilityUseCase(this._userAccountRepository);

  @override
  Future<Result<bool, PageError>> run(String input) async {
    final result = await _userAccountRepository.isUserAccountAvailable(input);
    return Result.value(result);
    // if (result.isSuccess) {
    //   return Result.value(result);
    // } else {
    //   return Result.error(PageError(GenericError.generic, 'Error looking for account'));
    // }
  }
}
