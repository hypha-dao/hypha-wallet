import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class RemoveAvatarUseCase {
  final AmplifyService _amplifyService;

  RemoveAvatarUseCase(this._amplifyService);

  Future<Result<bool, HyphaError>> run() async {
    try {
      print('remove avatar');

      // ignore: unused_local_variable
      final res = await _amplifyService.removeAvatar();
      return Result.value(true);
    } catch (error) {
      print('RemoveAvatarUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('RemoveAvatarUseCase error $error'));
    }
  }
}
