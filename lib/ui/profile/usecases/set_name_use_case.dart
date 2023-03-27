import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class SetNameUseCase {
  final AmplifyService _amplifyService;

  SetNameUseCase(this._amplifyService);

  Future<Result<bool, HyphaError>> run(String name) async {
    try {
      // ignore: unused_local_variable
      final res = await _amplifyService.setName(name);
      return Result.value(true);
    } catch (error) {
      print('SetNameUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('SetNameUseCase error $error'));
    }
  }
}
