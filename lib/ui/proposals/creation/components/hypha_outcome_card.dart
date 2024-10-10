import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/network/models/outcome_model.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class HyphaOutcomeCard extends StatelessWidget {
  final OutcomeModel outcomeModel;
  final dynamic valueNotifier;
  final int index;

  const HyphaOutcomeCard(this.outcomeModel, this.valueNotifier, this.index,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (valueNotifier.value != index) {
          valueNotifier.value = index;
        }
      },
      child: HyphaCard(
          child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Transform.rotate(
                  angle: index == 1 ? -3.14 / 3 : 0,
                  child: Icon(
                    outcomeModel.icon,
                    color: HyphaColors.primaryBlu,
                    size: 24,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  outcomeModel.type,
                  style: context.hyphaTextTheme.smallTitles,
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
            const SizedBox(
              height: 15,
            ),
            Text(
              outcomeModel.details,
              style: context.hyphaTextTheme.ralMediumBody
                  .copyWith(color: HyphaColors.midGrey),
            ),
          ],
        ),
      )),
    );
  }
}
