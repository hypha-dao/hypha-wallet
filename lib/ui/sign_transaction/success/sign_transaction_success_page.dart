import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';

enum SignSuccessTransactionType {
  approved('Approved');

  const SignSuccessTransactionType(this.value);

  final String value;

  Color get iconBackgroundColor {
    switch (this) {
      case SignSuccessTransactionType.approved:
        return HyphaColors.success;
    }
  }

  IconData get icon {
    switch (this) {
      case SignSuccessTransactionType.approved:
        return Icons.check;
    }
  }
}

class SignTransactionSuccessPage extends StatelessWidget {
  final SignSuccessTransactionType transactionType;

  const SignTransactionSuccessPage({super.key, required this.transactionType});

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
            text: 'The transaction was successfully',
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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 45, right: 45, bottom: 40),
          child: HyphaAppButton(
            onPressed: () {
              Get.offAll(() => const HyphaBottomNavigation());
            },
            title: 'Close',
          ),
        ),
        body: Stack(
          children: [
            const HyphaHalfBackground(showTopBar: false),
            Column(
              children: [
                const SizedBox(height: 80),
                Image.asset('assets/images/thumb_up.png', width: 240, height: 240),
                Padding(
                  padding: const EdgeInsets.only(left: 45, right: 45, top: 16),
                  child: Text('Completed!', textAlign: TextAlign.center, style: context.hyphaTextTheme.mediumTitles),
                ),
                const SizedBox(height: 16),
                Padding(padding: const EdgeInsets.only(left: 45, right: 45), child: successText),
                const SizedBox(height: 46),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: transactionType.iconBackgroundColor,
                  ),
                  child: Icon(transactionType.icon, size: 24),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
