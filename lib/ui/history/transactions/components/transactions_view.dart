import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get.dart' as GetX;
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/cards/hypha_transaction_action_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/history/details/transaction_detail_page.dart';
import 'package:hypha_wallet/ui/history/transactions/interactor/transactions_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';
import 'package:hypha_wallet/ui/sign_transaction/interactor/data/transaction_action_data.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsBloc, TransactionsState>(
      builder: (context, state) {
        return HyphaPageBackground(
          withGradient: true,
          child: Scaffold(
            backgroundColor: HyphaColors.transparent,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Transaction History',
                style: context.hyphaTextTheme.smallTitles.copyWith(color: HyphaColors.white),
              ),
              backgroundColor: HyphaColors.primaryBlu,
            ),
            body: HyphaBodyWidget(
              pageState: state.pageState,
              success: (_) => ListView.separated(
                padding: const EdgeInsets.all(22),
                itemCount: state.transactions.length,
                itemBuilder: (context, index) {
                  final TransactionModel item = state.transactions[index];
                  return HyphaTransactionActionCard(
                    data: TransactionDetailsCardData(
                      contractAction: item.actionName,
                      params: item.data,
                      timestamp: item.timestamp,
                      memo: item.data['memo'],
                      onTap: () {
                        GetX.Get.to(
                          TransactionDetailsPage(transactionModel: item),
                          transition: GetX.Transition.rightToLeft,
                        );
                      },
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 16);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
