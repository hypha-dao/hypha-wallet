import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class DaoWidget extends StatelessWidget {
  final DaoData dao;

  const DaoWidget({
    super.key,
    required this.dao,
  });

  @override
  Widget build(BuildContext context) {
    return HyphaCard(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          /// Navigate to Hypha URL
        },
        child: Stack(
          children: [
            const Positioned(
              right: 12,
              top: 12,
              child: Icon(Icons.navigate_next),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.ac_unit, size: 48),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(dao.settingsDaoTitle, style: context.hyphaTextTheme.smallTitles),
                          Text(
                            'dao.hypha.earth/${dao.settingsDaoUrl}',
                            style: context.hyphaTextTheme.reducedTitles.copyWith(color: HyphaColors.primaryBlu),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  const HyphaDivider(),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.calendar_month),
                          const SizedBox(width: 4),
                          Text(
                            'The date here',
                            style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(
                              height: 0,
                              color: HyphaColors.midGrey,
                            ),
                          ),
                        ],
                      ),
                      Text('Core member', style: context.hyphaTextTheme.ralMediumBody.copyWith(height: 0)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
