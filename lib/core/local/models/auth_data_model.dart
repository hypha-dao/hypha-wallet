import 'package:hypha_wallet/core/crypto/eosdart_ecc/src/key.dart';

class AuthDataModel {
  final EOSPrivateKey eOSPrivateKey;
  final List<String> words;

  AuthDataModel(this.eOSPrivateKey, this.words);

  AuthDataModel.fromKeyAndWords(String key, this.words) : eOSPrivateKey = EOSPrivateKey.fromString(key);

  AuthDataModel.fromKeyAndNoWords(String key)
      : eOSPrivateKey = EOSPrivateKey.fromString(key),
        words = [];
}
