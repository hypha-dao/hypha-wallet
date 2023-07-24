import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/models/symbol_model.dart';
import 'package:hypha_wallet/core/network/models/token_model.dart';
import 'package:hypha_wallet/core/network/models/token_value.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart' as HResult;
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

class SendTokenUseCase {
  final EOSService _eosService;
  final AuthRepository _authRepository;

  SendTokenUseCase(this._eosService, this._authRepository);

  Future<HResult.Result<String, HyphaError>> run(
    WalletTokenData tokenData,
    UserProfileData receiverUser,
    String userEnteredAmount,
    String? memo,
  ) async {
    final user = _authRepository.authDataOrCrash;
    final result = await _eosService.transferTokens(
      fromAccount: user.userProfileData.accountName,
      toAccount: receiverUser.accountName,
      tokenValue: TokenValue(
        double.parse(userEnteredAmount),
        TokenModel(
          symbol: SymbolModel(symbol: tokenData.symbol, precision: tokenData.precision),
          contract: tokenData.contract,
        ),
      ),
      memo: memo ?? '',
      network: user.userProfileData.network,
    );

    if (result.isValue) {
      return HResult.Result.value(result.asValue!.value);
    } else {
      return HResult.Result.error(HyphaError.generic('Error sending tokens'));
    }
  }
}
