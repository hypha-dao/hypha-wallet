import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class SetBioUseCase {
  final AmplifyService _amplifyService;

  SetBioUseCase(this._amplifyService);

  Future<Result<bool, HyphaError>> run(SetBioUseCaseInput input) async {
    print('set bio to ${input.profileBio}');
    try {
      // ignore: unused_local_variable
      final res = await _amplifyService.setBio(input.profileBio);
      return Result.value(true);
    } catch (error) {
      print('SetBioUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('SetBioUseCase error $error'));
    }
  }
}

class SetBioUseCaseInput {
  final String profileBio;

  SetBioUseCaseInput({required this.profileBio});
}
