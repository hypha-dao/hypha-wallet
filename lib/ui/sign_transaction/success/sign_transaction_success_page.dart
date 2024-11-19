import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/bottom_component/hypha_safe_bottom_navigation_bar.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';

enum SignSuccessTransactionType {
  approved('Approved'),
  published('published');

  const SignSuccessTransactionType(this.value);

  final String value;

  Color get iconBorderColor => HyphaColors.offWhite;

  IconData get icon => Icons.check;
}


class SignTransactionSuccessPage extends StatelessWidget {
  final SignSuccessTransactionType transactionType;
  final String? proposalId;

  const SignTransactionSuccessPage({super.key, required this.transactionType, this.proposalId});

  @override
  Widget build(BuildContext context) {
    final successText = RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: context.hyphaTextTheme.regular.copyWith(
          color: context.isDarkTheme ? HyphaColors.white : HyphaColors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: proposalId == null ? 'Transaction' : 'Your Proposal has been\nsuccessfully',
            style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.primaryBlu),
          ),
          const TextSpan(text: ' '),
          TextSpan(text: transactionType.value),
        ],
      ),
    );

    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        bottomNavigationBar: HyphaSafeBottomNavigationBar(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// uncomment this (when you get the created proposal ID)
              /*if(proposalId != null) ... [
                HyphaAppButton(
                  buttonType: ButtonType.secondary,
                  buttonColor: HyphaColors.gradientBlackLight,
                  onPressed: () {
                    Get.to(
                      ProposalDetailsPage(proposalId: proposalId!),
                      transition: Transition.rightToLeft,
                    );
                  },
                  title: 'See Proposal Details',
                ),
                const SizedBox(height: 20),
              ],*/
              HyphaAppButton(
                onPressed: () {
                  Get.offAll(() => const HyphaBottomNavigation());
                },
                title: 'Close',
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            const HyphaHalfBackground(showTopBar: false),
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  Image.asset('assets/images/thumb_up.png', width: 240, height: 240),
                  Padding(
                    padding: const EdgeInsets.only(left: 45, right: 45, top: 16),
                    child: Text('Success!', textAlign: TextAlign.center, style: context.hyphaTextTheme.mediumTitles),
                  ),
                  const SizedBox(height: 16),
                  Padding(padding: const EdgeInsets.only(left: 45, right: 45), child: successText),
                  const SizedBox(height: 46),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: transactionType.iconBorderColor,
                        width: 2,
                      ),
                    ),
                    child: Icon(transactionType.icon, size: 24, color: transactionType.iconBorderColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
