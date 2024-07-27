import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';
import 'package:hypha_wallet/core/network/api/services/token_repository.dart';
import 'package:hypha_wallet/core/network/api/services/token_service.dart';
import 'package:hypha_wallet/core/network/models/token_value.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';
import 'package:rxdart/rxdart.dart';

class GetUserTokensUseCase {
  final FirebaseDatabaseService _database;
  final AuthRepository _authRepository;
  final TokenService _tokenService;
  final TokenRepositoryService _tokenRepository;

  GetUserTokensUseCase(this._database, this._authRepository, this._tokenService, this._tokenRepository);

  Stream<List<WalletTokenData>> run() {
    final user = _authRepository.authDataOrCrash;
    final Stream<List<FirebaseTokenData>> allTokens = _tokenRepository.tokenStream;
    final Stream<List<String>> userTokensLive =
        _database.getUserTokensLive(accountName: user.userProfileData.accountName);

    return Rx.combineLatest2(allTokens, userTokensLive,
        (List<FirebaseTokenData> allTokensList, List<String> userTokens) {
      final relevantTokens = allTokensList
          .where((token) => token.network == user.userProfileData.network.name && userTokens.contains(token.id))
          .toList();

      return Stream.fromIterable(relevantTokens).asyncMap((token) async {
        final Result<TokenValue, HyphaError> tokenBalance = await _tokenService.getTokenBalance(
          user: user.userProfileData,
          tokenContract: token.contract,
          symbol: token.symbol,
        );
        return WalletTokenData(
          network: user.userProfileData.network.name,
          userOwnedAmount: tokenBalance.asValue?.value.amount,
          selected: true,
          image: token.image,
          name: token.name,
          contract: token.contract,
          symbol: token.symbol,
          precision: token.precision,
        );
      }).toList();
    }).switchMap((value) => Stream.fromFuture(value));
  }
}
