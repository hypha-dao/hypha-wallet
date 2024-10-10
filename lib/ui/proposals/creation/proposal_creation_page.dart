import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/proposals/creation/components/proposal_creation_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'components/outcome_selection_view.dart';

class ProposalCreationPage extends StatelessWidget {
  const ProposalCreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        scrolledUnderElevation: 0,
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmoothPageIndicator(
                  controller: PageController(),
                  count: 4,
                  effect: SlideEffect(
                    dotHeight: 10.0,
                    dotWidth: 10.0,
                    activeDotColor: HyphaColors.primaryBlu,
                    dotColor: HyphaColors.lightBlue.withOpacity(.2),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Create Proposal',
                  style: context.hyphaTextTheme.mediumTitles,
                ),
              ],
            ),
            const Spacer(),
            ...List.generate(2, (index) {
              return Container(
                margin: const EdgeInsets.only(left: 10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  // TODO(Zied-Saif): add a gradient (not clickable)
                  gradient: index == 1 ? HyphaColors.gradientBlu : null,
                  color: index == 0 ? HyphaColors.midGrey.withOpacity(.3) : null,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 6 : 0),
                  child: Icon(
                    index == 0 ? Icons.arrow_back_ios : Icons.arrow_forward_ios,
                    size: 18,
                    color: HyphaColors.offWhite,
                  ),
                ),
              );
            })
          ],
        ),
      ),
      body:  DaoSelectionView(),
    );
  }
}
