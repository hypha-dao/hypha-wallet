import 'package:flutter_test/flutter_test.dart';
import 'package:hypha_wallet/core/network/api/user_account_service.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

void main() {
  test('Name generator test from short name', () async {
    final mockNetworkingManager = NetworkingManager('https://foobar');
    final service = UserAccountService(networkingManager: mockNetworkingManager);

    final name = 'Foo Bar';

    final generated = service.generateUserName(fullName: name, sequence: 0);

    expect(generated, 'foobar111111');

    final generated94 = service.generateUserName(fullName: name, sequence: 94);
    expect(generated94, 'foobar111444');

    final nameSet = Set();
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

    final nameSet = Set();
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
}
