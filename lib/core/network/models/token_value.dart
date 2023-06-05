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
}
