import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/services/token_service.dart';
import 'package:hypha_wallet/core/network/models/token_value.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class GetTokenBalanceUseCase {
  final AuthRepository _authRepository;
  final TokenService _tokenService;

  GetTokenBalanceUseCase(this._authRepository, this._tokenService);

  Future<Result<TokenValue, HyphaError>> run(String symbol, String contract) async {
    final user = _authRepository.authDataOrCrash;
    return _tokenService.getTokenBalance(
      user: user.userProfileData,
      tokenContract: contract,
      symbol: symbol,
    );
  }
}
