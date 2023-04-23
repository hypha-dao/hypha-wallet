import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/core/network/repository/profile_repository.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class DeleteAccountUseCase {
  final AmplifyService _amplifyService;
  final AuthRepository _authRepository;

  DeleteAccountUseCase(this._amplifyService, this._authRepository);

  Future<Result<bool, HyphaError>> run(String accountName) async {
    print('Delete Account: $accountName');

    final profileService = GetIt.I.get<ProfileService>();

    final data1 = await profileService.getProfile(accountName);
    print('profile data ${data1.isValue}');
    if (data1.isValue) {
      final p = data1.asValue!.value;
      print('profile data ${p.account}');
      print('profile data ${p.name}');
      print('profile data ${p.avatar}');
      print('profile image url ${p.avatarUrl}');
    } else if (data1.isError) {
      print('error retrieving profile data for $accountName');
    }
    try {
      /// 1 - Delete profile service account
      await _amplifyService.loginUser(accountName);
      final res = await _amplifyService.deleteAccount();

// test
      final data1 = await profileService.getProfile(accountName);
      print('[DELETE] profile data ${data1.isValue}');
      if (data1.isValue) {
        final p = data1.asValue!.value;
        print('[DELETE] profile data ${p.account}');
        print('[DELETE] profile data ${p.name}');
        print('[DELETE] profile data ${p.avatar}');
        print('[DELETE] profile image url ${p.avatarUrl}');
      } else if (data1.isError) {
        print('[DELETE] error retrieving profile data for $accountName');
      }

      if (res) {
        /// [TBD] 2 - delete blockchain account - recycle
        /// 3 - logout and delete local data
        await _authRepository.logOut();
      }

      return Result.value(res);
    } catch (error) {
      print('DeleteAccountUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('Error deleting account: $error'));
    }
  }
}
