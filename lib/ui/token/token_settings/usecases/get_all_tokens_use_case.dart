import 'dart:async';

import 'package:collection/collection.dart';
import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/services/dao_service.dart';
import 'package:hypha_wallet/core/network/api/services/token_repository.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';
import 'package:rxdart/rxdart.dart';

class GetAllTokensUseCase {
  final FirebaseDatabaseService _database;
  final AuthRepository _authRepository;
  final TokenRepositoryService _tokenRepository;
  final DaoService _daoService;

  GetAllTokensUseCase(this._database, this._authRepository, this._tokenRepository, this._daoService);

  Future<Stream<List<WalletTokenData>>> run() async {
    final user = _authRepository.authDataOrCrash;
    final Stream<List<FirebaseTokenData>> allTokens = _tokenRepository.tokenStream;
    final Stream<List<String>> userTokens = _database.getUserTokensLive(accountName: user.userProfileData.accountName);

    // Get user's DAOs
    final daosResult = await _daoService.getDaos(user: user.userProfileData);
    final userDaoIds = daosResult.isValue ? daosResult.asValue!.value.map((dao) => dao.docId).toSet() : <int>{};

    final Stream<List<WalletTokenData>> tokens = Rx.combineLatest2(
      allTokens,
      userTokens,
      (List<FirebaseTokenData> allTokensList, List<String> userTokensList) {
        return allTokensList
            .where((token) => token.network == user.userProfileData.network.name)
            .map(
              (e) => WalletTokenData(
                network: user.userProfileData.network.name,
                selected: userTokensList.contains(e.id),
                image: e.image,
                name: e.name,
                contract: e.contract,
                symbol: e.symbol,
                precision: e.precision,
                group: _determineTokenGroup(e, userDaoIds),
              ),
            )
            .sortedBy((e) => e.name)
            .toList();
      },
    );

    return tokens;
  }

  TokenGroup _determineTokenGroup(FirebaseTokenData token, Set<int> userDaoIds) {
    if (token.daoId != null && userDaoIds.contains(token.daoId)) {
      return TokenGroup.dao;
    } else if (token.daoId == null) {
      return TokenGroup.system;
    } else {
      return TokenGroup.other;
    }
  }
}
