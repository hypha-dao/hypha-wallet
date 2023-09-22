import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/progress_indicator/hypha_progress_indicator.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/shared/listview_with_all_separators.dart';
import 'package:hypha_wallet/ui/wallet/components/wallet_transaction_tile.dart';
import 'package:hypha_wallet/ui/wallet/interactor/wallet_bloc.dart';

class RecentTransactionsWidget extends StatelessWidget {
  final bool loadingTransaction;
  final List<WalletTransactionTileData> recentTransactions;

  const RecentTransactionsWidget({super.key, required this.loadingTransaction, required this.recentTransactions});

  @override
  Widget build(BuildContext context) {
    return loadingTransaction
        ? const Center(child: HyphaProgressIndicator())
        : recentTransactions.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.only(top: 24),
                child: ListViewWithAllSeparators(
                  shrinkWrap: true,
                  itemBuilder: (context, WalletTransactionTileData item, index) {
                    return WalletTransactionTile(data: item);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 26, top: 0, bottom: 16),
                        child: Text('Recent transactions',
                            style: context.hyphaTextTheme.ralMediumBody.copyWith(
                              color: HyphaColors.midGrey,
                            )),
                      );
                    }
                    return Container(
                      height: 16,
                      color: context.isDarkMode ? HyphaColors.transparent : HyphaColors.offWhite,
                    );
                  },
                  items: recentTransactions,
                ),
              )
            : Container(
                padding: const EdgeInsets.all(24),
                width: double.infinity,
                child: HyphaCard(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Text(
                          'You haven’t done any transaction yet',
                          style: context.hyphaTextTheme.ralMediumSmallNote,
                        ),
                        const SizedBox(height: 8),
                        HyphaAppButton(
                          title: 'Refresh',
                          onPressed: () {
                            context.read<WalletBloc>().add(const WalletEvent.onRefresh());
                          },
                        )
                      ],
                    ),
                  ),
                ),
              );
  }
}
