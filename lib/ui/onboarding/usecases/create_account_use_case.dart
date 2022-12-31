import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:image_picker/image_picker.dart';

class CreateAccountUseCase extends InputUseCase<Result<bool, HyphaError>, Input> {
  final AuthRepository _authRepository;

  CreateAccountUseCase(this._authRepository);

  @override
  Future<Result<bool, HyphaError>> run(Input input) async {
    try {
      // TODO(Nik): Mocked result. Use API
      final bool result = await _authRepository.createUserAccount(
        userName: input.userName,
        accountName: input.accountName,
        image: input.image,
        userAuthData: input.userAuthData,
      );
      return Result.value(result);
    } catch (e) {
      return Result.error(HyphaError.api('Error creating account'));
    }
  }
}

class Input {
  final String accountName;
  final String userName;
  final XFile? image;
  final UserAuthData userAuthData;

  Input({required this.accountName, required this.userAuthData, required this.userName, this.image});
}
