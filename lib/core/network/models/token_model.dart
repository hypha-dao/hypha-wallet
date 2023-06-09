import 'package:hypha_wallet/core/network/models/symbol_model.dart';

class TokenModel {
  final SymbolModel symbol;
  final String contract;

  TokenModel(this.symbol, this.contract);

  // "1.00 HYPHA"
  factory TokenModel.fromString(String s, String contract) {
    final components = s.split(' ');
    assert(components.length == 2, 'Invalid symbol string');

    final numberString = components[0];
    final symbol = components[1];
    final decimals = numberString.split('.');
    assert(decimals.length == 2, 'Invalid decimals string');

    final precision = decimals[1].length;
    return TokenModel(SymbolModel(symbol, precision), contract);
  }
}
