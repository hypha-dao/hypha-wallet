import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/proposals/filter/components/hypha_filter_card.dart';

class FilterView extends StatelessWidget {
  FilterView({super.key});

  final List<String> statusFilters = ['Active Proposals', 'Past Proposals'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          context.isDarkMode ? HyphaColors.darkBlack : HyphaColors.offWhite,
      appBar: AppBar(
        title: const Text('Filter Proposals'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Filter by your DAOs',
              style: context.hyphaTextTheme.ralMediumBody
                  .copyWith(color: HyphaColors.midGrey),
            ),
            const SizedBox(
              height: 10,
            ),
            ...List.generate(
              3,
              (index) {
                return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: HyphaFilterCard(
                      title: 'Hypha DAO',
                      imageUrl:
                          'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
                      subTitle: '6 Active Proposals',
                      isSelected: index == 0,
                    ));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Filter By Status',
              style: context.hyphaTextTheme.ralMediumBody
                  .copyWith(color: HyphaColors.midGrey),
            ),
            const SizedBox(
              height: 10,
            ),
            ...List.generate(
              2,
              (index) {
                return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: HyphaFilterCard(
                      title: statusFilters[index],
                      isSelected: index == 0,
                    ));
              },
            ),
            const Spacer(),
            HyphaAppButton(
              title: 'SAVE FILTERS',
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
