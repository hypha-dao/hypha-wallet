import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';

enum SignSuccessTransactionType {
  approved('Approved'),
  rejected('Rejected');

  const SignSuccessTransactionType(this.value);

  final String value;

  Color get iconBackgroundColor {
    switch (this) {
      case SignSuccessTransactionType.approved:
        return HyphaColors.success;
      case SignSuccessTransactionType.rejected:
        return HyphaColors.error;
    }
  }

  IconData get icon {
    switch (this) {
      case SignSuccessTransactionType.approved:
        return Icons.check;
      case SignSuccessTransactionType.rejected:
        return Icons.close;
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
            text: 'The transaction has been successfully',
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
        body: Column(
          children: [
            const HyphaHalfBackground(),
            const SizedBox(height: 46),
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 45, top: 45),
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
      ),
    );
  }
}
