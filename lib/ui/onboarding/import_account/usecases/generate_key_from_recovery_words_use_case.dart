import 'package:hypha_wallet/core/local/models/auth_data_model.dart';
import 'package:hypha_wallet/core/local/services/crypto_auth_service.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';

/// Uses 12 words recovery phrase to generate the private key.
class GenerateKeyFromRecoveryWordsUseCase extends InputUseCase<AuthDataModel, List<String>> {
  final CryptoAuthService _cryptoAuthService;

  GenerateKeyFromRecoveryWordsUseCase(this._cryptoAuthService);

  @override
  Future<AuthDataModel> run(List<String> input) async {
    return _cryptoAuthService.createPrivateKeyFromWords(input);
  }
}
