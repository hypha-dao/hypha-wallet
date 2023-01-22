import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/cards/hypha_transaction_action_card.dart';
import 'package:hypha_wallet/ui/history/transactions/interactor/transactions_bloc.dart';
import 'package:hypha_wallet/ui/sign_transaction/interactor/data/transaction_action_data.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsBloc, TransactionsState>(
      builder: (context, state) {
        return Scaffold(
          body: ListView.separated(
            padding: const EdgeInsets.only(left: 16, right: 16),
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
