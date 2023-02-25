import 'package:get/get.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:image_picker/image_picker.dart';

class CreateAccountUseCase extends InputUseCase<Result<bool, HyphaError>, Input> {
  final AuthRepository _authRepository;

  CreateAccountUseCase(this._authRepository);

  @override
  Future<Result<bool, HyphaError>> run(Input input) async {
    Get.showSnackbar(
      const GetSnackBar(
        message: 'NIK: Here is where you call create account using profile service',
        duration: Duration(seconds: 3),
      ),
    );
    return Result.error(HyphaError.api('Error creating account'));

    try {
      final bool result = await _authRepository.createUserAccount(
        userName: input.userName,
        accountName: input.accountName,
        image: input.image,
        userAuthData: input.userAuthData,
        inviteLinkData: input.inviteLinkData,
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
  final InviteLinkData inviteLinkData;

  Input({
    required this.accountName,
    required this.userAuthData,
    required this.userName,
    this.image,
    required this.inviteLinkData,
  });
}
