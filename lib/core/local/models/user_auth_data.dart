import 'package:hypha_wallet/core/crypto/eosdart_ecc/eosdart_ecc.dart';

class UserAuthData {
  final EOSPrivateKey eOSPrivateKey;
  final List<String> words;

  UserAuthData(this.eOSPrivateKey, this.words);

  factory UserAuthData.fromKeyAndWords(String key, List<String> words) {
    return UserAuthData(EOSPrivateKey.fromString(key), words);
  }

  factory UserAuthData.fromKeyAndNoWords(String key) {
    return UserAuthData(EOSPrivateKey.fromString(key), []);
  }
}
