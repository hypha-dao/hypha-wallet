import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class CreateAccountUseCase extends InputUseCase<Result<bool, HyphaError>, Input> {
  final AuthRepository _authRepository;

  CreateAccountUseCase(this._authRepository);

  @override
  Future<Result<bool, HyphaError>> run(Input input) async {
    try {
      // TODO(Nik): Mocked result. Use API
      final bool result = await _authRepository.createUserAccount(userAccount: input.userAccount, token: input.token);
      return Result.value(result);
    } catch (e) {
      return Result.error(HyphaError.api('Error creating account'));
    }
  }
}

class Input {
  final String userAccount;
  final String token;

  Input({required this.userAccount, required this.token});
}
