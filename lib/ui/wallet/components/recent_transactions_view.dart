import 'package:flutter/material.dart';
import 'package:get/get.dart' as GetX;
import 'package:get/get.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/ui/wallet/components/recent_transactions_widget.dart';
import 'package:hypha_wallet/ui/wallet/components/wallet_transaction_tile.dart';

class RecentTransactionsView extends StatelessWidget {
  final bool loadingTransaction;
  final List<WalletTransactionTileData> recentTransactions;
  const RecentTransactionsView({super.key, required this.loadingTransaction, required this.recentTransactions});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.isDarkMode ? null : HyphaColors.offWhite,
          gradient: context.isDarkMode ? HyphaColors.gradientBlack : null,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
          boxShadow: context.isDarkMode ? HyphaColors.darkModeCardShadow : HyphaColors.lightModeCardShadow,
        ),
        child: RecentTransactionsWidget(
          loadingTransaction: loadingTransaction,
          recentTransactions: recentTransactions,
        ),
      ),
    );
  }
}