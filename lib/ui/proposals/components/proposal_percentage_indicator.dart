import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProposalPercentageIndicator extends StatelessWidget {
  final String title;
  final double percentage;
  final Color progressColor;
  const ProposalPercentageIndicator(this.title, this.percentage, this.progressColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.hyphaTextTheme.reducedTitles,
            ),
            Text(
              '${(percentage * 100).toInt()}%',
              style: context.hyphaTextTheme.reducedTitles,
            ),
          ],
        ),
        const SizedBox(height: 5),
        LinearPercentIndicator(
          barRadius: const Radius.circular(10),
          padding: EdgeInsets.zero,
          lineHeight: 8,
          percent: percentage,
          backgroundColor: HyphaColors.midGrey,
          progressColor: progressColor,
        ),
      ],
    );
  }
}
