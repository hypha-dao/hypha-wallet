import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';

class RemoveTokenFromUserUseCase {
  final FirebaseDatabaseService _database;
  final HyphaSharedPrefs _appSharedPrefs;

  RemoveTokenFromUserUseCase(this._database, this._appSharedPrefs);

  Future run(String tokenId) async {
    final user = await _appSharedPrefs.getUserProfileData();
    await _database.removeTokenFromUser(tokenId: tokenId, accountName: user!.accountName);
  }
}
