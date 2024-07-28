import 'package:get/get.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';
import 'package:hypha_wallet/core/network/api/services/token_repository.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/history/transactions/usecases/get_transaction_history_use_case.dart';
import 'package:hypha_wallet/ui/shared/mappers/map_to_recent_transactions_tile_data.dart';
import 'package:hypha_wallet/ui/wallet/components/wallet_transaction_tile.dart';

class GetTransactionHistoryDataUseCase {
  final GetTransactionHistoryUseCase _getTransactionHistoryUseCase;
  final TokenRepositoryService _tokenRepository;
  final AuthRepository _authRepository;

  GetTransactionHistoryDataUseCase(
    this._getTransactionHistoryUseCase,
    this._tokenRepository,
    this._authRepository,
  );

  Future<Result<List<WalletTransactionTileData>, HyphaError>> getTransferTransactionsForTokens() async {
    final user = _authRepository.authDataOrCrash;
    final List<FirebaseTokenData> allTokens = await _tokenRepository.getCurrentTokens(user.userProfileData.network);

    final result = await _getTransactionHistoryUseCase.run(true);
    if (result.isValue) {
      return Result.value(result.valueOrCrash
          .where(
            (TransactionModel element) =>
                element is TransactionRedeem ||
                element is TransactionTransfer &&
                    allTokens.firstWhereOrNull(
                            (token) => token.contract == element.account && token.symbol == element.symbol) !=
                        null,
          )
          .toList()
          .mapRecentTransactionsTileData(allTokens, user.userProfileData.accountName));
    } else {
      return Result.error(result.asError!.error);
    }
  }

  Future<Result<List<WalletTransactionTileData>, HyphaError>> getTransferTransactionsForToken({
    required String contract,
    required String symbol,
  }) async {
    final user = _authRepository.authDataOrCrash;
    final List<FirebaseTokenData> allTokens = await _tokenRepository.getCurrentTokens(user.userProfileData.network);

    final result = await _getTransactionHistoryUseCase.run(true);
    if (result.isValue) {
      return Result.value(result.valueOrCrash
          .where((TransactionModel element) =>
              element is TransactionRedeem ||
              element is TransactionTransfer && contract == element.account && symbol == element.symbol)
          .toList()
          .mapRecentTransactionsTileData(allTokens, user.userProfileData.accountName));
    } else {
      return Result.error(result.asError!.error);
    }
  }
}
