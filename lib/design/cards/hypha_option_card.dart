import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/dao_image.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class HyphaOptionCard extends StatelessWidget {
  final DaoData? dao;
  final String? title;
  final String? subTitle;
  final dynamic valueNotifier;
  final int index;

  const HyphaOptionCard(this.valueNotifier, this.index,
      {this.dao, this.title, this.subTitle, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (valueNotifier.value != index) {
          valueNotifier.value = index;
        } else if (subTitle != null) {
          valueNotifier.value = null;
        }
      },
      child: HyphaCard(
          child: Container(
        height: dao != null ? null : 54,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          children: [
            if (dao != null) DaoImage(dao),
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
                    style: context.hyphaTextTheme.ralMediumBody
                        .copyWith(color: HyphaColors.midGrey),
                  ),
              ],
            ),
            const Spacer(),
            ValueListenableBuilder<dynamic>(
              valueListenable: valueNotifier,
              builder: (context, selectedIndex, child) {
                return CircleAvatar(
                  radius: 12,
                  backgroundColor: selectedIndex == index
                      ? HyphaColors.primaryBlu
                      : HyphaColors.midGrey.withOpacity(.3),
                  child: CircleAvatar(
                    radius: selectedIndex == index ? 4 : 10.5,
                    backgroundColor: selectedIndex == index
                        ? HyphaColors.white
                        : HyphaColors.lightBlack,
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
