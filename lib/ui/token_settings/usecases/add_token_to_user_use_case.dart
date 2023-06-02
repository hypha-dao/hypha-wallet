import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/token_settings/data/settings_token_data.dart';

class AddTokenToUserUseCase {
  final FirebaseDatabaseService _database;
  final HyphaSharedPrefs _appSharedPrefs;

  AddTokenToUserUseCase(this._database, this._appSharedPrefs);

  Future run(String tokenId) async {
    final user = await _appSharedPrefs.getUserProfileData();
    await _database.saveTokenToUser(tokenId: tokenId, accountName: user!.accountName);
  }
}
