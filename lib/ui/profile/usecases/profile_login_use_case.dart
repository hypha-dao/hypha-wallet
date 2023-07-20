import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class ProfileLoginUseCase {
  final AmplifyService _amplifyService;

  ProfileLoginUseCase(this._amplifyService);

  Future<Result<bool, HyphaError>> run(String accountName, Network network) async {
    try {
      // ignore: unused_local_variable
      final res = await _amplifyService.profileServiceLoginUser(accountName, network);
      return Result.value(true);
    } catch (error) {
      print('ProfileLoginUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('ProfileLoginUseCase error $error'));
    }
  }
}
