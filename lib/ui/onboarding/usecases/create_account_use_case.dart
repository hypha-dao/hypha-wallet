import 'package:hypha_wallet/core/network/repository/user_account_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_error.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class CreateAccountUseCase extends InputUseCase<Result<bool, PageError>, String> {
  final UserAccountRepository _userAccountRepository;

  CreateAccountUseCase(this._userAccountRepository);

  @override
  Future<Result<bool, PageError>> run(String input) async {
    try {
      // TODO(Nik): Mocked result. Use API
      final bool result = await Future.delayed(Duration(seconds: 3)).then((value) => true);
      // final result = await _userAccountRepository.createUserAccount(input);
      return Result.value(result);
    } catch (e) {
      return Result.error(PageError(GenericError.generic, 'Error looking for account'));
    }
  }
}
