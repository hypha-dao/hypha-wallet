import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/network/api/services/invite_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:image_picker/image_picker.dart';

class CreateAccountUseCase extends InputUseCase<Result<UserProfileData, HyphaError>, CreateAccountInput> {
  final AuthRepository _authRepository;
  final InviteService _inviteService;

  CreateAccountUseCase(this._authRepository, this._inviteService);

  @override
  Future<Result<UserProfileData, HyphaError>> run(CreateAccountInput input) async {
    final result = await _authRepository.createUserAccount(
      accountName: input.accountName,
      userAuthData: input.userAuthData,
      inviteLinkData: input.inviteLinkData,
      userName: input.userName,
      image: input.image,
    );

    if (result.isValue) {
      if (input.inviteLinkData.enrollSecret?.isNotEmpty == true) {
        await _inviteService.redeemInvite(
          user: result.asValue!.value,
          secret: input.inviteLinkData.enrollSecret!,
        );

        return result;
      }
    }

    return result;
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
