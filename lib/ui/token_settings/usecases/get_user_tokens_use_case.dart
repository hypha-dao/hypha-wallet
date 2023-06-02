import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/token_settings/data/settings_token_data.dart';

class GetAllTokensUseCase {
  final FirebaseDatabaseService _database;
  final HyphaSharedPrefs _appSharedPrefs;

  GetAllTokensUseCase(this._database, this._appSharedPrefs);

  Future<List<SettingsTokenData>> run() async {
    final user = await _appSharedPrefs.getUserProfileData();
    final List<String> userTokens = await _database.getUserTokens(accountName: user!.accountName);
    final List<FirebaseTokenData> allTokens = await _database.getAllTokens();

    final userSelectedItems = allTokens
        .where((FirebaseTokenData item) => userTokens.contains(item.id))
        .map(
          (e) => SettingsTokenData(
            true,
            image: e.image,
            name: e.name,
            contract: e.contract,
            symbol: e.symbol,
            id: e.id,
          ),
        )
        .toList();
    final userNotSelectedItems = allTokens
        .where((FirebaseTokenData item) => !userTokens.contains(item.id))
        .map(
          (e) => SettingsTokenData(
            false,
            image: e.image,
            name: e.name,
            contract: e.contract,
            symbol: e.symbol,
            id: e.id,
          ),
        )
        .toList();

    return userSelectedItems + userNotSelectedItems;
  }
}
