import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class SetBioUseCase {
  final AmplifyService _amplifyService;

  SetBioUseCase(this._amplifyService);

  Future<Result<bool, HyphaError>> run(String name) async {
    try {
      print('set bio to $name');
      final res = await _amplifyService.setBio(name);
      return Result.value(true);
    } catch (error) {
      print('SetBioUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('SetBioUseCase error $error'));
    }
  }
}
