import 'package:get/get.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:image_picker/image_picker.dart';

class CreateAccountUseCase extends InputUseCase<Result<bool, HyphaError>, CreateAccountInput> {
  final AuthRepository _authRepository;

  CreateAccountUseCase(this._authRepository);

  @override
  Future<Result<bool, HyphaError>> run(CreateAccountInput input) async {
    try {
      final result = await _authRepository.createUserAccount(
        accountName: input.accountName,
        userAuthData: input.userAuthData,
        inviteLinkData: input.inviteLinkData,
        userName: input.userName,
        image: input.image,
      );
      return Result.value(result);
    } catch (error) {
      return Result.error(HyphaError.api(error.toString()));
    }
  }
}

class CreateAccountInput {
  final String accountName;
  final String userName;
  final XFile? image;
  final UserAuthData userAuthData;
  final InviteLinkData inviteLinkData;

  CreateAccountInput({
    required this.accountName,
    required this.userAuthData,
    required this.userName,
    this.image,
    required this.inviteLinkData,
  });
}
