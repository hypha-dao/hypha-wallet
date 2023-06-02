import 'dart:async';

import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/token_settings/data/settings_token_data.dart';

class GetAllTokensUseCase {
  final FirebaseDatabaseService _database;
  final HyphaSharedPrefs _appSharedPrefs;

  GetAllTokensUseCase(this._database, this._appSharedPrefs);

  Future<Stream<List<SettingsTokenData>>> run() async {
    final user = await _appSharedPrefs.getUserProfileData();
    final List<FirebaseTokenData> allTokens = await _database.getAllTokens();

    final Stream<List<String>> userTokens = _database.getUserTokensLive(accountName: user!.accountName);
    final Stream<List<SettingsTokenData>> tokens = userTokens.map((List<String> userTokens) {
      return allTokens
          .map(
            (e) => SettingsTokenData(
              userTokens.contains(e.id),
              image: e.image,
              name: e.name,
              contract: e.contract,
              symbol: e.symbol,
              id: e.id,
            ),
          )
          .toList();
    });

    return tokens;
  }
}
