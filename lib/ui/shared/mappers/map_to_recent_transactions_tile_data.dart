import 'package:collection/collection.dart';
import 'package:hypha_wallet/core/firebase/firebase_token_data.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/ui/wallet/components/wallet_transaction_tile.dart';

extension MapToRecentTransactionsTileData on List<TransactionModel> {
  List<WalletTransactionTileData> mapRecentTransactionsTileData(List<FirebaseTokenData> allTokens, String userAccount) {
    return map((TransactionModel item) => switch (item) {
          final TransactionRedeem item => WalletTransactionTileData(
              name: item.account,
              amount: item.amount,
              isReceived: true,
              time: item.timestamp,
              tokenImage: allTokens.firstWhereOrNull((e) => e.symbol == item.symbol)?.image ?? 'Image',
              tokenName: item.symbol,
              userProfileImage: null,
              isTransfer: false,
            ),
          final TransactionTransfer item => WalletTransactionTileData(
              name: item.to == userAccount ? item.from : item.to,
              amount: item.amount.toString(),
              isReceived: item.to == userAccount,
              time: item.timestamp,
              tokenImage: allTokens.firstWhereOrNull((e) => e.symbol == item.symbol)?.image ?? 'Image',
              tokenName: item.symbol,
              userProfileImage: null,
              isTransfer: true,
              to: item.to,
              from: item.from,
            ),
          _ => WalletTransactionTileData(
              name: item.account,
              amount: '???',
              isReceived: true,
              time: item.timestamp,
              tokenImage: 'token image',
              tokenName: '???',
              userProfileImage: null,
              isTransfer: false,
            )
        }).toList();
  }
}
