import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/dao_image.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class HyphaFilterCard extends StatelessWidget {
  final DaoData? dao;
  final String? title;
  final String? subTitle;
  final dynamic valueNotifier;
  final int index;

  const HyphaFilterCard(this.valueNotifier, this.index, {this.dao, this.title, this.subTitle, super.key});

  @override
  Widget build(BuildContext context) {
    // TODO(Saif): fix the card height (filter by status)
    return GestureDetector(
      onTap: () {
        valueNotifier.value = valueNotifier.value == index ? null : index;
      },
      child: HyphaCard(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          children: [
            if (dao != null)
              DaoImage(dao),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? dao!.settingsDaoTitle,
                  style: context.hyphaTextTheme.smallTitles,
                ),
                if (subTitle != null)
                  Text(
                    subTitle!,
                    style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                  ),
              ],
            ),
            const Spacer(),
            ValueListenableBuilder<dynamic>(
              valueListenable: valueNotifier,
              builder: (context, selectedIndex, child) {
                return Visibility(
                  visible: selectedIndex == index,
                  child: const CircleAvatar(
                    radius: 12,
                    backgroundColor: HyphaColors.primaryBlu,
                  ),
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}
