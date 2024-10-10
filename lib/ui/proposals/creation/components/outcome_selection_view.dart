import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/network/models/outcome_model.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/proposals/creation/components/hypha_outcome_card.dart';

class DaoSelectionView extends StatelessWidget {
   DaoSelectionView({super.key});

   final List<OutcomeModel> outcomeTypes = [
    OutcomeModel(
        icon: CupertinoIcons.hand_thumbsup,
        type: 'Agreement',
        details:
            'A Proposal where other DAO members are simply asked to vote Yes or No.'),
    OutcomeModel(
        icon: Icons.fiber_smart_record_outlined,
        type: 'One Time Payment',
        details:
            'Attach a payment request to your proposal.  You will be asked to chose a token and specify  an amount in a following step.'),
    OutcomeModel(
        icon: Icons.calendar_month_outlined,
        type: 'Recurring Payment',
        details:
            'Think at this outcome as something like a job position. You will be asked to define token, duration and amount per week or month in a following step.'),
  ];

  final ValueNotifier<int> selectedTypeIndexNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      color: context.isDarkMode ? HyphaColors.darkBlack : HyphaColors.offWhite,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            'Outcome',
            style: context.hyphaTextTheme.smallTitles
                .copyWith(color: HyphaColors.primaryBlu),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 30),
            child: Text(
              'This last step allows you to choose among three types of outcome for your proposal.',
              style: context.hyphaTextTheme.ralMediumBody
                  .copyWith(color: HyphaColors.midGrey),
            ),
          ),
          ...List.generate(
            outcomeTypes.length,
            (index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: HyphaOutcomeCard(
                    outcomeTypes[index], selectedTypeIndexNotifier, index),
              );
            },
          )
        ],
      ),
    );
  }
}
