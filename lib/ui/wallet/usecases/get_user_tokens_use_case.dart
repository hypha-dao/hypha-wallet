import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';

class GetUserTokensUseCase {
  final FirebaseDatabaseService _database;
  final HyphaSharedPrefs _appSharedPrefs;

  GetUserTokensUseCase(this._database, this._appSharedPrefs);

  Future<List<String>> run() async {
    final user = await _appSharedPrefs.getUserProfileData();
    return _database.getUserTokens(accountName: user!.accountName);
  }
}
