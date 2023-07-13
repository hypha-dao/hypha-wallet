import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/history/transactions/usecases/get_transaction_history_use_case.dart';
import 'package:hypha_wallet/ui/shared/mappers/map_to_recent_transactions_tile_data.dart';
import 'package:hypha_wallet/ui/wallet/components/wallet_transaction_tile.dart';

class GetTransactionHistoryDataUseCase {
  final GetTransactionHistoryUseCase _getTransactionHistoryUseCase;
  final FirebaseDatabaseService _firebaseDatabaseService;

  GetTransactionHistoryDataUseCase(this._getTransactionHistoryUseCase, this._firebaseDatabaseService);

  Future<Result<List<WalletTransactionTileData>, HyphaError>> run(bool transferOnly) async {
    final List<FirebaseTokenData> allTokens = await _firebaseDatabaseService.getAllTokens();

    final result = await _getTransactionHistoryUseCase.run(transferOnly);
    if (result.isValue) {
      return Result.value(result.valueOrCrash
          .where((TransactionModel element) => element is TransactionRedeem || element is TransactionTransfer)
          .toList()
          .mapRecentTransactionsTileData(allTokens, 'theremotecub')); // TODO(make this work)
    } else {
      return Result.error(result.asError!.error);
    }
  }
}
