import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/local/services/crypto_auth_service.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';

/// Uses 12 words recovery phrase to generate the private key.
class GenerateKeyFromSeedsPassportWordsUseCase extends InputUseCase<UserAuthData, List<String>> {
  final CryptoAuthService _cryptoAuthService;

  GenerateKeyFromSeedsPassportWordsUseCase(this._cryptoAuthService);

  @override
  Future<UserAuthData> run(List<String> input) async {
    return _cryptoAuthService.privateKeyFromSeedsGlobalPassportWords(input);
  }
}
