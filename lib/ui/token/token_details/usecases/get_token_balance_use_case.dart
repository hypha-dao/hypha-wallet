import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/network/api/services/token_service.dart';
import 'package:hypha_wallet/core/network/models/token_value.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class GetTokenBalanceUseCase {
  final HyphaSharedPrefs _appSharedPrefs;
  final TokenService _tokenService;

  GetTokenBalanceUseCase(this._appSharedPrefs, this._tokenService);

  Future<Result<TokenValue, HyphaError>> run(String symbol, String contract) async {
    final user = await _appSharedPrefs.getUserProfileData();
    return _tokenService.getTokenBalance(
      userAccount: user!.accountName,
      tokenContract: contract,
      symbol: symbol,
    );
  }
}
