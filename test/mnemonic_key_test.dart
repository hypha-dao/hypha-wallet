import 'package:flutter_test/flutter_test.dart';
import 'package:hypha_wallet/core/local/services/crypto_auth_service.dart';

void main() {
  test('Import Seeds Light Wallet + Hypha Wallet key', () async {
    final mnemonic = 'legal stereo tray wisdom erase abandon poverty journey pair drop fault master';
    final expectedPrivateKey = '5KRLqbKNP5bE58TJHfic4a8jmr5ePKAdrK1nvEbNUQ8q1KR6E9s';
    final expectedPublicKey = 'EOS5v2jhTXJMmhEbsH9LdiLj4y91F9cCEzwQ14HpSA5Azyxcwoqqf';

    final authService = CryptoAuthService();

    final authData = authService.createPrivateKeyFromWords(mnemonic.split(' '));

    final eosKey = authData.eOSPrivateKey;

    expect(eosKey.toString(), expectedPrivateKey);
    expect(eosKey.toEOSPublicKey().toString(), expectedPublicKey);
  });
  test('Import Seeds Passport key', () async {
    final mnemonic = 'upon what runway husband grief bomb evoke bicycle episode century crystal jazz';
    final expectedPrivateKey = '5HpYGg6hfeD2a16PUoAf22AMzPFUuqDpBCMSbYGRmeDppJ8dyM9';
    final expectedPublicKey = 'EOS5DmdNG4mv2tFrJY1yqctExqa34G2anXfaQ5sXeAwZTSnRFVH6Y';

    final authService = CryptoAuthService();

    final eosKey = authService.createPrivateKeyFrom12WordsSeedsGlobalPassport(mnemonic.split(' '));

    expect(eosKey.toString(), expectedPrivateKey);
    expect(eosKey.toEOSPublicKey().toString(), expectedPublicKey);
  });
  test('Import Bip39 + Bip44 EOS key', () async {
    // test values from bip39 generator site: https://iancoleman.io/bip39/
    final mnemonic =
        'million false shift cheese fashion motion beyond increase animal horn chest course potato excuse advance';
    final expectedPrivateKey = '5JJT5vekbbQMhkm7mJpvhe1KzFahDYwK5KLANJSdMTTZ6aBaTuX';
    final expectedPublicKey = 'EOS59QJCQy2AW9tUZN6uRi3u6Ms1fKEaQtZhiGDUDsA8baZTbAtSw';

    final authService = CryptoAuthService();
    final eosKey = authService.createPrivateKeyFromWordsEOS(mnemonic.split(' '));

    print('private: $eosKey');
    print(' public: ${eosKey.toEOSPublicKey()}');

    expect(eosKey.toString(), expectedPrivateKey);
    expect(eosKey.toEOSPublicKey().toString(), expectedPublicKey);
  });
}
