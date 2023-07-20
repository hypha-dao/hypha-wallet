import 'package:flutter_test/flutter_test.dart';
import 'package:hypha_wallet/core/crypto/dart_esr/dart_esr.dart';
import 'package:hypha_wallet/core/crypto/eosdart/src/client.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';

import 'mocks/mock_secure_storage_service.dart';

class MockEosService extends EOSService {
  MockEosService(super.secureStorageService, super.remoteConfigService);
  @override
  EOSClient getEosClientForNetwork(Network network, {List<String> privateKeys = const []}) {
    return EOSClient(baseUrl: 'https://mainnet.telos.net', privateKeys: [], version: 'v1');
  }
}

void main() {
  test('Parse ESR link', () async {
    final esrLink =
        'esr://go1TT08UMRSfnXWFVdQgGjF6qFE5sbAsLIskxqAYQ6JREUW8TLqdNzOFTlvbzrITQuLJgx_AkwePmugHMZ6M3vULeDbxop3ZYQXExN7m9--1781zXMdx6u9_Hn6z5Divx96yLzdL8uHHF5_eXbppGefN90bjw2B5dIQIboAbL1QikR7DbWDugA8GU6YHfSw8jmMofVv98Xl6_eXlaoYYahi4h1au3146kX37oImi0lDB3a-lDEYR1qgNwJFUIhaG8hBhFFCOOaGYIZ1qAzEyETZWxiGgRiPMLGHwBkSC-aD0OKKcsMTPzFoQCiYdtxZAwDtUCR7ba48jzH2r64A2IrMEQqFGE6WAlZ5Aq4CYEBvICJRoQIsLd5EBEnHBRJhmqK1gU2iHWlYkCnEwm0LlhgiYtC4ryZmYam0fOHGUas_eXTJsoOIUZyhvyw76qzjDCjax8j0jNoDnfew1bWg3XvaLDDej7GzO7HHFuOvpREqWll8VsTvCkb7QkxB6CtsB7E1bdpyjHUEJ7C_16O7SDZtwPPPtv121D_4VVrVN9DSAr_svH-nk0_X8JK_PLU0qz-arPVKCosI_mDxdODGjYT5LrztVr1fuFcEnC_ppIlQS97hTBTe661H27yM49XqV-uEXDlQUqizsTuX181IuPb-33wkzVDJqxXnJUlHy3O7A_SK3EJ39089_5QwL3ha2nMUxISLhpr-WpQN3cYgIBV4McduuROVASUWblMEh-08Lt3E_XuPR4mIa8vXkcbKy-WRKL5AHD5fJ8hpf5CsYZknYunOjc0s-UCvhvOThMalojFXqEbsWyh242JhpBE3_hB2W4P5uYjqYnQE4YqBr-liQnzKOjJF6fnISS1qTOM0GOhGlMsITdhVNNGkU5hqT7De4llD_qt-cm2oEc7jWxu1mrTlLmrUrM9CqzbTa9XrTh-DKXGvMdD0r3doy3e1tt2xtl_7HVslth3u23w';

    final MockEosService eosService = MockEosService(MockSecureStorageService(), RemoteConfigService());

    var parsed = false;
    try {
      // ignore: unused_local_variable
      final signingRequestManager =
          SigningRequestManager.from(esrLink, options: defaultSigningRequestEncodingOptions(), eosService: eosService);
      //print('Signing Request: ${signingRequestManager.signingRequest.toJson()}');
      parsed = true;
    } catch (error, s) {
      print(error);
      print(s);
    }

    expect(parsed, true);
  });
  test('Parse login link', () async {
    final esrLink =
        'esr://gmNgYmBYlmzC9MoglIFhB9frlxK9jIwMEMAEpQVhAhyWppZGhhZGRowJGSUlBVb6-okFmboFiZW5qXklehmVBRmJeqmJRSUZ-iVFiXnFicklmfl59qWZKbaGiUlJySbmybqpKUbJuqaWFqm6FqlJJrqpSWYpaeYWiYZJSeZqJRXxQKXV1SUVtbUMAA';
    final MockEosService eosService = MockEosService(MockSecureStorageService(), RemoteConfigService());

    var parsed = false;
    try {
      // ignore: unused_local_variable
      final signingRequestManager =
          SigningRequestManager.from(esrLink, options: defaultSigningRequestEncodingOptions(), eosService: eosService);
      //print('Signing Request: ${signingRequestManager.signingRequest.toJson()}');
      parsed = true;
    } catch (error, s) {
      print(error);
      print(s);
    }

    expect(parsed, true);
  });
}
