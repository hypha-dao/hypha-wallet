import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/seeds_esr.dart';
import 'package:hypha_wallet/core/local/services/secure_storage_service.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/user_account_service.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/sign_transaction/interactor/sign_transaction_bloc.dart';
import 'package:hypha_wallet/ui/sign_transaction/usecases/sign_transaction_use_case.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

void main() {
  test('Name generator test from short name', () async {
    final mockNetworkingManager = NetworkingManager('https://foobar');
    final service = UserAccountService(networkingManager: mockNetworkingManager);

    final name = 'Foo Bar';

    final generated = service.generateUserName(fullName: name, sequence: 0);

    expect(generated, 'foobar111111');

    final generated94 = service.generateUserName(fullName: name, sequence: 94);
    expect(generated94, 'foobar111444');

    final nameSet = <dynamic>{};
    for (int s = 0; s < 100; s++) {
      final gen = service.generateUserName(fullName: name, sequence: s);
      if (gen == null) continue;
      expect(nameSet.contains(gen), false);
      nameSet.add(gen);
      print('gen $gen');
    }
  });
  test('Name generator test from long name', () async {
    final mockNetworkingManager = NetworkingManager('https://foobar');
    final service = UserAccountService(networkingManager: mockNetworkingManager);

    final name = 'The Remote Cuban';

    final generated = service.generateUserName(fullName: name, sequence: 0);

    expect(generated, 'theremotecub');

    final generated63 = service.generateUserName(fullName: name, sequence: 63);
    expect(generated63, 'theremote333');

    final nameSet = <dynamic>{};
    for (int s = 0; s < 100; s++) {
      final gen = service.generateUserName(fullName: name, sequence: s);
      if (gen == null) continue;
      expect(nameSet.contains(gen), false);
      nameSet.add(gen);
      print('$s gen $gen');
    }
  });
  test('Name generator test from edge case name', () async {
    final mockNetworkingManager = NetworkingManager('https://foobar');
    final service = UserAccountService(networkingManager: mockNetworkingManager);

    final name = 'a1111111112';

    final generated = service.generateUserName(fullName: name, sequence: 0);

    expect(generated, 'a11111111121');

    final nameSet = Set();
    for (int s = 0; s < 100; s++) {
      final gen = service.generateUserName(fullName: name, sequence: s);
      if (gen == null) continue;
      print('testing $gen');
      expect(nameSet.contains(gen), false);
      nameSet.add(gen);
      print('$s gen $gen');
    }
  });

  test('sign', () async {
    WidgetsFlutterBinding.ensureInitialized();
    final secretKeyDONTCHECKIN = 'NEVER CHECK THIS IN'; // NEVER CHECK IN
    final accountName = 'illumination'; // replace with your own account...

    final client = EOSClient(baseUrl: 'http://telos.greymass.com', privateKeys: [secretKeyDONTCHECKIN], version: 'v1');

    // this is an ESR code for voting - so will only work for hypha members and for the next few days
    // when the proposal is still around.
    // if we actually make a test case for this we could use a transfer action with a small amount
    final esrCode =
        'esr:gmNgYrqz5UTyYQ-1vJ_CDEDAyMBgsPYX2wpPEIdhgdFdRoOVp9OsViaXgPgr3hoZicMErJeD1TCwFCQWFwP1MVlnlJQUFFvp6ycn6SXmJWfkF-nlZOZl6ydZmJonJycZ65qbmibrmpgkmelaWBqb6BqZmyWaGZsbmlokGjKygJSeZASbeHkVOwPTYpf1R6S3XvPJ_n-9TbohLITppunG_coz506RKPZetuncobmMjmA7fEBWGOuZ6hkoOBXllxenFoUUJeYVF-QXlUCFffOrMnNyEvVBbA3fxOTMvJL84gxrBc-8ktQcBaCAgn-wQoSCoUG8oWm8uaaCY0FBTmp4apJ3Zom-qbG5nrGZgoa3R4ivj45CTmZ2qoJ7anJ2vqaCc0ZRfm6qvqGBhZ4BCCoEJ6YlFmVCtQAA';
    final SeedsESR esr = SeedsESR(uri: esrCode);

    final resolved = await esr.resolve(account: accountName);

    final ex = esr.processResolvedRequest();

    final ScanQrCodeResultData scanData = ex.asValue!.value;

    // ignore: prefer_const_constructors
    // final secureStorageservice = SecureStorageService(FlutterSecureStorage());
    final service = EOSService(client);

    // preferences not working in unit tests as unit tests run on Mac, which doesn't have shared preferences?
    // final sharedPrefs = await SharedPreferences.getInstance();
    // final prefs = HyphaSharedPrefs(RxSharedPreferences(sharedPrefs));

    final result = await SignTransactionUseCase(service, accountName).run(scanData.transaction);

    print('res: $result');
  });
}
