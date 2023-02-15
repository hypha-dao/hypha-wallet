import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/repository/profile_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class FetchProfileUseCase extends InputUseCase<Result<ProfileData, HyphaError>, String> {
  FetchProfileUseCase();

  @override
  // ignore: avoid_renaming_method_parameters
  Future<Result<ProfileData, HyphaError>> run(String accountName) async {
    return ProfileService().getProfile(accountName);
  }
}
