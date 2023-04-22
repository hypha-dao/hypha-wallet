import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class DeleteAccountUseCase {
  final AmplifyService _amplifyService;

  DeleteAccountUseCase(this._amplifyService);

  Future<Result<bool, HyphaError>> run(String accountName) async {
    // DEBUG - not live yet
    await Future.delayed(Duration(seconds: 2));
    return Result.value(true);

    try {
      /// 1 - Delete profile service account
      // ignore: unused_local_variable

      await _amplifyService.loginUser(accountName);
      final res = await _amplifyService.deleteAccount();

      /// 2 - delete blockchain account - recycle

      /// 3 - logout and delete local data

      return Result.value(true);
    } catch (error) {
      print('DeleteAccountUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('Error deleting account: $error'));
    }
  }
}
