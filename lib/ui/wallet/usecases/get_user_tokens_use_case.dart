import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/core/network/repository/transaction_history_repository.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class GetUserTokensUseCase {
  final FirebaseDatabaseService _database;
  final HyphaSharedPrefs _appSharedPrefs;

  GetUserTokensUseCase(this._database, this._appSharedPrefs);

  Future<List<String>> run() async {
    final user = await _appSharedPrefs.getUserProfileData();
    return _database.getTokens(accountName: user!.accountName);
  }
}
