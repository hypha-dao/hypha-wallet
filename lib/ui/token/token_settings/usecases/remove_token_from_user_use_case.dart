import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';

class RemoveTokenFromUserUseCase {
  final FirebaseDatabaseService _database;
  final AuthRepository _authRepository;

  RemoveTokenFromUserUseCase(this._database, this._authRepository);

  Future run(String tokenId) async {
    final user = _authRepository.authDataOrCrash;
    await _database.removeTokenFromUser(tokenId: tokenId, accountName: user.userProfileData.accountName);
  }
}
