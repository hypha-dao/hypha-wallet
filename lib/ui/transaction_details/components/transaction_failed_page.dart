import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';

class TransactionFailedPage extends StatelessWidget {
  const TransactionFailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final failedText = RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: context.hyphaTextTheme.regular,
        children: <TextSpan>[
          TextSpan(
            text: 'Something went wrong,\ntransaction ',
            style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.error),
          ),
          const TextSpan(text: ' '),
          TextSpan(text: 'failed', style: context.hyphaTextTheme.regular),
        ],
      ),
    );

    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 45, right: 45, bottom: 40),
          child: HyphaAppButton(
            buttonType: ButtonType.secondary,
            onPressed: () {
              Get.offAll(() => const HyphaBottomNavigation());
            },
            title: 'Close',
          ),
        ),
        body: Column(
          children: [
            const HyphaHalfBackground(backgroundColor: HyphaColors.error),
            const SizedBox(height: 46),
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 45, top: 45),
              child: Text('Whoops!', textAlign: TextAlign.center, style: context.hyphaTextTheme.mediumTitles),
            ),
            const SizedBox(height: 16),
            Padding(padding: const EdgeInsets.only(left: 45, right: 45), child: failedText),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 45),
              child: Text(
                'Please try again. You need to launch the transaction again from the website or app that originated it. Sorry for the inconvenience',
                style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 26),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: HyphaColors.error,
              ),
              child: const Icon(Icons.warning_amber_outlined, size: 24),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
