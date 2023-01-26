import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/cards/hypha_transaction_details_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/history/details/interactor/transaction_detail_bloc.dart';

class TransactionDetailView extends StatelessWidget {
  final TransactionModel transactionModel;

  const TransactionDetailView(this.transactionModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionDetailBloc, TransactionDetailState>(
      builder: (context, state) {
        return HyphaPageBackground(
          withGradient: true,
          child: Scaffold(
            backgroundColor: HyphaColors.transparent,
            appBar: AppBar(
              centerTitle: true,
              title: Text('Transaction Details', style: context.hyphaTextTheme.smallTitles),
              backgroundColor: HyphaColors.transparent,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: HyphaTransactionDetailsCard(data: transactionModel),
              ),
            ),
          ),
        );
      },
    );
  }
}
