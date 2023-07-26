import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/user_account_repository.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/shared/usercases/get_user_profiles_from_accounts_use_case.dart';

class SearchForMemberUseCase {
  final UserAccountRepository userAccountRepository;
  final GetUserProfilesFromAccountsUseCase getUserProfilesFromAccountsUseCase;

  SearchForMemberUseCase(this.userAccountRepository, this.getUserProfilesFromAccountsUseCase);

  Future<Result<List<UserProfileData>, HyphaError>> run(String searchQuery, Network network) async {
    final Result<List<String>, HyphaError> result = await userAccountRepository.findHyphaAccounts(searchQuery, network);
    if (result.isValue) {
      return getUserProfilesFromAccountsUseCase.run({network: result.asValue!.value});
    }

    return Result.error(HyphaError.generic('Error fetching accounts that start with $searchQuery'));
  }
}
