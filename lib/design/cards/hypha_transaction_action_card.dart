import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/sign_transaction/interactor/data/transaction_action_data.dart';
import 'package:intl/intl.dart';

class HyphaTransactionActionCard extends StatelessWidget {
  final TransactionDetailsCardData data;

  const HyphaTransactionActionCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final List rows = List.empty(growable: true);
    data.params.forEach(
      (key, value) {
        if (key != 'memo') {
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
        }
      },
    );

    final List timeFrame = List.empty(growable: true);
    if (data.timestamp != null) {
      timeFrame.addAll([
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Signed On', style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey)),
            const SizedBox(width: 4),
            Text(
              DateFormat('h:mma | d MMM yyyy').format(data.timestamp!),
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
      ]);
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: data.onTap,
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...timeFrame,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data.contractAction,
                    style: context.hyphaTextTheme.smallTitles,
                    maxLines: 2,
                  ),
                  data.onTap != null ? const Icon(Icons.navigate_next) : const SizedBox.shrink()
                ],
              ),
              const SizedBox(height: 22),
              const HyphaDivider(),
              const SizedBox(height: 16),
              ...rows,
              if (data.memo != null) ...[
                const SizedBox(height: 16),
                const HyphaDivider(),
                const SizedBox(height: 16),
                Text(
                  'Memo',
                  style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    color: context.isDarkTheme
                        ? HyphaColors.midGrey.withOpacity(0.10)
                        : HyphaColors.midGrey.withOpacity(0.05),
                  ),
                  child: Text(data.memo!, style: context.hyphaTextTheme.ralMediumBody),
                )
              ]
            ],
          ),
        ),
      ),
    );
  }
}
