import 'dart:async';

import 'package:collection/collection.dart';
import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

class GetAllTokensUseCase {
  final FirebaseDatabaseService _database;
  final AuthRepository _authRepository;

  GetAllTokensUseCase(this._database, this._authRepository);

  Future<Stream<List<WalletTokenData>>> run() async {
    final user = _authRepository.authDataOrCrash;
    final List<FirebaseTokenData> allTokens = await _database.getAllTokens(user.userProfileData.network);

    final Stream<List<String>> userTokens = _database.getUserTokensLive(accountName: user.userProfileData.accountName);
    final Stream<List<WalletTokenData>> tokens = userTokens.map((List<String> userTokens) {
      return allTokens
          .map(
            (e) => WalletTokenData(
              network: user.userProfileData.network.name,
              selected: userTokens.contains(e.id),
              image: e.image,
              name: e.name,
              contract: e.contract,
              symbol: e.symbol,
              precision: e.precision,
            ),
          )
          .sortedBy((e) => e.name)
          .toList();
    });

    return tokens;
  }
}
