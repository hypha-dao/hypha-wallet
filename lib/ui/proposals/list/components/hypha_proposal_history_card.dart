import 'package:flutter/material.dart';
import 'package:get/get.dart' as GetX;
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/dao_image.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/proposals/history/proposals_history_page.dart';

class HyphaProposalHistoryCard extends StatelessWidget {
  final DaoData dao;
  final String subTitle;

  const HyphaProposalHistoryCard(
      {required this.dao, required this.subTitle, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GetX.Get.to(() =>  ProposalsHistoryPage(dao),
            transition: GetX.Transition.leftToRight);
      },
      child: HyphaCard(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          children: [
            DaoImage(dao),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dao.settingsDaoTitle,
                  style: context.hyphaTextTheme.smallTitles,
                ),
                Text(
                  subTitle,
                  style: context.hyphaTextTheme.ralMediumBody
                      .copyWith(color: HyphaColors.midGrey),
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios)
          ],
        ),
      )),
    );
  }
}
