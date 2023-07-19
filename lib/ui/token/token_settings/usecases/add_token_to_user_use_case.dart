import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';

class AddTokenToUserUseCase {
  final FirebaseDatabaseService _database;
  final AuthRepository _authRepository;

  AddTokenToUserUseCase(this._database, this._authRepository);

  Future run(String tokenId) async {
    final user = _authRepository.authDataOrCrash;
    await _database.saveTokenToUser(tokenId: tokenId, accountName: user.userProfileData.accountName);
  }
}
