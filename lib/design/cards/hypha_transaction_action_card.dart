import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/transaction_details/interactor/data/transaction_action_data.dart';

class HyphaTransactionActionCard extends StatelessWidget {
  final TransactionDetailsCardData transactionDetailsCardData;

  const HyphaTransactionActionCard({super.key, required this.transactionDetailsCardData});

  @override
  Widget build(BuildContext context) {
    final List rows = List.empty(growable: true);
    transactionDetailsCardData.params.forEach((key, value) {
      rows.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(key, style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey)),
          Text(value, style: context.hyphaTextTheme.ralMediumBody),
        ],
      ));
      rows.add(const SizedBox(height: 8));
    });
    return Card(
      margin: const EdgeInsets.all(22),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(transactionDetailsCardData.contractAction, style: context.hyphaTextTheme.smallTitles),
              const SizedBox(height: 12),
              const HyphaDivider(),
              const SizedBox(height: 12),
              ...rows
            ],
          ),
        ),
      ),
    );
  }
}
