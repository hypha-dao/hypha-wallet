import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';

const String _keyPrivateKey = 'Qc_privateKey';
const String _keySecretPhrase = 'Qc_secretPhrase';

const String _wordsDivider = '-';

class SecureStorageService {
  final FlutterSecureStorage _secureStorage;

  SecureStorageService(this._secureStorage);

  void _savePrivateKey(String privateKey) => _secureStorage.write(key: _keyPrivateKey, value: privateKey);

  Future<String?> _getPrivateKey() => _secureStorage.read(key: _keyPrivateKey);

  void _saveSecretPhrase(String secretPhrase) => _secureStorage.write(key: _keySecretPhrase, value: secretPhrase);

  Future<String?> _getSecretPhrase() => _secureStorage.read(key: _keySecretPhrase);

  void setUserAuthData(UserAuthData userAuthData) {
    _savePrivateKey(userAuthData.eOSPrivateKey.toString());
    if (userAuthData.words.isNotEmpty) {
      final String secretPhrase = userAuthData.words.join(_wordsDivider);
      _saveSecretPhrase(secretPhrase);
    }
  }

  Future<UserAuthData?> getUserAuthData() async {
    String? privateKey = await _getPrivateKey();
    String? secretPhrase = await _getSecretPhrase();

    if (privateKey != null) {
      final words = secretPhrase?.let((it) => it.split('-')) ?? [];

      return UserAuthData.fromKeyAndWords(privateKey, words);
    }

    return null;
  }

  Future<void> clearAllData() async {
    return await _secureStorage.deleteAll();
  }
}
