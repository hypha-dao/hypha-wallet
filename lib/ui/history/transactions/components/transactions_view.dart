import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/cards/hypha_transaction_action_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/history/transactions/interactor/transactions_bloc.dart';
import 'package:hypha_wallet/ui/sign_transaction/interactor/data/transaction_action_data.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsBloc, TransactionsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Transaction History',
              style: context.hyphaTextTheme.smallTitles.copyWith(color: HyphaColors.white),
            ),
            backgroundColor: HyphaColors.primaryBlu,
          ),
          body: ListView.separated(
            padding: const EdgeInsets.all(22),
            itemCount: state.transactions.length,
            itemBuilder: (context, index) {
              final item = state.transactions[index];
              return HyphaTransactionActionCard(
                data: TransactionDetailsCardData(
                  contractAction: item.actionName,
                  params: item.data,
                  timestamp: item.timestamp,
                  onTap: () {},
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 16);
            },
          ),
        );
      },
    );
  }
}
