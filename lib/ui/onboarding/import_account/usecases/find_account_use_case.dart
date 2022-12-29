import 'package:async/async.dart';
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';

class FindAccountsUseCase extends InputUseCase<Result<AccountNames>, String> {
  final EOSClient _eosClient;
  FindAccountsUseCase(this._eosClient);

  @override
  Future<Result<AccountNames>> run(String input) async {
    return await _eosClient.getKeyAccounts(input);
  }
}
