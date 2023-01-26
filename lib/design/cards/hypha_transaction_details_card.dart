import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

class HyphaTransactionDetailsCard extends StatelessWidget {
  final TransactionModel data;

  const HyphaTransactionDetailsCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final List rows = List.empty(growable: true);
    data.data.forEach((key, value) {
      rows.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(key, style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey)),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              value.toString(),
              style: context.hyphaTextTheme.ralMediumBody,
              textAlign: TextAlign.right,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ));
      rows.add(const SizedBox(height: 8));
    });

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Signed On',
                      style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey)),
                  const SizedBox(width: 4),
                  Text(
                    DateFormat('h:mma | d MMM yyyy').format(data.timestamp),
                    style: context.hyphaTextTheme.ralMediumSmallNote,
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const HyphaDivider(),
              const SizedBox(height: 22),
              Text('Contract Action - ${data.actionName}', style: context.hyphaTextTheme.smallTitles),
              const SizedBox(height: 22),
              const HyphaDivider(),
              const SizedBox(height: 22),
              ...rows,
              const SizedBox(height: 22),
              const HyphaDivider(),
              const SizedBox(height: 22),
              Text('Transaction ID', style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey)),
              Text(
                data.transactionId.toString(),
                style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.primaryBlu),
              ),
              const SizedBox(height: 22),
              const HyphaDivider(),
              const SizedBox(height: 22),
              Text('Block ID', style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey)),
              Text(data.blockNumber.toString(), style: context.hyphaTextTheme.ralMediumBody),
              const SizedBox(height: 22),
              const HyphaDivider(),
              const SizedBox(height: 22),
              HyphaAppButton(
                title: 'share',
                onPressed: () async {
                  await Share.share(data.transactionId.toString());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
