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
  final Function()? onTap;

  const HyphaOptionCard(this.valueNotifier, this.index, {this.dao, this.title, this.subTitle, super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (dao != null && subTitle != null) {
          final List<int> updatedList = List<int>.from(valueNotifier.value);

          if (updatedList.contains(index) && updatedList.length != 1) {
            updatedList.remove(index);
          } else if (!updatedList.contains(index)) {
            updatedList.add(index);
          }

          valueNotifier.value = updatedList;
        } else {
          if (valueNotifier.value != index) {
            valueNotifier.value = index;
          } else if (subTitle != null) {
            valueNotifier.value = null;
          }
        }

        onTap?.call();
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
                    style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                  ),
              ],
            ),
            const Spacer(),
            ValueListenableBuilder<dynamic>(
              valueListenable: valueNotifier,
              builder: (context, value, child) {
                return dao != null && subTitle != null
                    ? SizedBox(
                      height: 24,
                      width: 24,
                      child: Transform.scale(
                        scale: 1.35,
                        child: Checkbox(
                            value: value.contains(index),
                            onChanged: (bool? newValue) {
                              final List<int> updatedList = List<int>.from(valueNotifier.value);

                              if (newValue!) {
                                updatedList.add(index);
                              } else if (updatedList.length != 1) {
                                updatedList.remove(index);
                              }

                              valueNotifier.value = updatedList;
                            },
                          ),
                      ),
                    )
                    : CircleAvatar(
                        radius: 12,
                        backgroundColor: value == index
                            ? HyphaColors.primaryBlu
                            : HyphaColors.midGrey.withOpacity(.3),
                        child: CircleAvatar(
                          radius: value == index ? 4 : 10.3,
                          backgroundColor: value == index
                              ? HyphaColors.white
                              : context.isDarkTheme ? HyphaColors.gradientBlackLight : HyphaColors.offWhite,
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
