import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class FetchProfileUseCase extends InputUseCase<Result<ProfileData, HyphaError>, String> {
  FetchProfileUseCase();

  @override
  Future<Result<ProfileData, HyphaError>> run(String input) async {
    return Future.delayed(const Duration(seconds: 2)).then(
      (value) => Result.value(
        ProfileData(
          name: 'Gery Mc Lover',
          account: 'TheRemoteCub',
          organizations: [
            OrganizationData(name: 'Hypha', image: 'https://picsum.photos/200'),
          ],
          image: 'https://picsum.photos/250',
          bio: 'Tell other DAO members something about yourself, what makes you thrive or brings you here.',
          bitCoinAddress: 'wertyui45t6y7u89iytfcvbji7y6tr',
        ),
      ),
    );
  }
}
