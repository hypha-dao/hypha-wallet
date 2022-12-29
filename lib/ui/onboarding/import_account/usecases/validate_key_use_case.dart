import 'package:hypha_wallet/core/crypto/eosdart_ecc/src/key.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';

class ValidateKeyUseCase extends InputUseCase<String?, String> {
  ValidateKeyUseCase();

  @override
  Future<String?> run(String input) async {
    try {
      final EOSPrivateKey eosPrivateKey = EOSPrivateKey.fromString(input);
      final EOSPublicKey eosPublicKey = eosPrivateKey.toEOSPublicKey();
      return eosPublicKey.toString();
    } catch (e, s) {
      print('Error EOSPrivateKey.fromString $e');
      print(s);
      return null;
    }
  }
}
