import 'package:hypha_wallet/core/network/models/token_model.dart';

class TokenValue {
  TokenModel tokenModel;
  double amount;
  TokenValue(this.amount, this.tokenModel);

  factory TokenValue.fromString(String s, String contract) {
    final tokenModel = TokenModel.fromString(s, contract);
    final components = s.split(' ');
    final amount = double.parse(components[0]);
    return TokenValue(amount, tokenModel);
  }

  /// Return a blockchain compatible string for this value
  ///
  /// e.g. if amount = 4.91 and token precision is 2, symbol is HYPHA
  /// => "4.91 HYPHA"
  /// if amount == 5 => "5.00 HYPHA"
  ///
  /// This value can be used for all calls that accept an asset type
  ///
  String asFormattedString() {
    return '${amount.toStringAsFixed(tokenModel.symbol.precision)} ${tokenModel.symbol.symbol}';
  }
}
