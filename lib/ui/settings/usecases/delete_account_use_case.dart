import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class DeleteAccountUseCase {
  final AmplifyService _amplifyService;
  final AuthRepository _authRepository;

  DeleteAccountUseCase(this._amplifyService, this._authRepository);

  Future<Result<bool, HyphaError>> run(UserProfileData user) async {
    print('Delete Account: ${user.accountName}');

    try {
      /// 1 - Delete profile service account
      await _amplifyService.profileServiceLoginUser(user);
      final res = await _amplifyService.deleteAccount(user.network);

      if (res) {
        /// 2 - logout and delete local data
        await _authRepository.logOut(user.accountName);
      }

      return Result.value(res);
    } catch (error) {
      print('DeleteAccountUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('Error deleting account: $error'));
    }
  }
}
