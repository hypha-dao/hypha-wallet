import 'package:async/async.dart';
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';

class FindAccountsUseCase extends InputUseCase<Result<List<UserProfileData>>, String> {
  final EOSClient _eosClient;

  FindAccountsUseCase(this._eosClient);

  @override
  Future<Result<List<UserProfileData>>> run(String input) async {
    Result<AccountNames> result = await _eosClient.getKeyAccounts(input);
    if (result.isValue) {
      // TODO(NIK): Fetch data from the hypha profile api
      return Result.value(result.asValue!.value.accountNames
          .map((e) => UserProfileData(accountName: e, userName: 'userNameTODO'))
          .toList());
    } else {
      return Result.error(HyphaError.api('Failed to fetch accounts'));
    }
  }
}
