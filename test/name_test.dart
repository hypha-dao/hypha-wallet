import 'package:flutter_test/flutter_test.dart';
import 'package:hypha_wallet/core/crypto/eos_models/eos_name.dart';
import 'package:hypha_wallet/core/crypto/eos_models/eos_symbol.dart';

void main() {
  test('Test conversions of eosio types', () async {
    expect(true, true, reason: 'failed');

    final foo = EosName.from('foo');
    expect(foo.value, 6712615244595724288); // reference value from greymass wharfkit unit test
    final nameAsString = foo.toString();
    expect(nameAsString, 'foo');

    const demoName = '.........124c';
    final eosName = EosName.from(demoName);

    final EosSymbol symbol = EosSymbol(eosName.value);
    print('symbol for name $demoName: $symbol');
    expect(symbol.toString(), 'HD');
  });
}
