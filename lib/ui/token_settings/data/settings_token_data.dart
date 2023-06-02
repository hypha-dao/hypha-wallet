import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';

class SettingsTokenData extends FirebaseTokenData {
  final bool selected;

  SettingsTokenData(
    this.selected, {
    required super.image,
    required super.name,
    required super.contract,
    required super.symbol,
    required super.id,
  });
}
