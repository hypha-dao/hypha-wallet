import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/bottom_component/hypha_safe_bottom_navigation_bar.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';

class SignTransactionFailedPage extends StatelessWidget {
  final HyphaError error;

  const SignTransactionFailedPage(this.error, {super.key});

  @override
  Widget build(BuildContext context) {
    final failedText = RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: context.hyphaTextTheme.regular.copyWith(
          color: context.isDarkTheme ? HyphaColors.white : HyphaColors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'This transaction ',
            style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.error),
          ),
          const TextSpan(text: ' '),
          const TextSpan(text: 'failed'),
        ],
      ),
    );

    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        bottomNavigationBar: HyphaSafeBottomNavigationBar(
          child: HyphaAppButton(
            buttonType: ButtonType.secondary,
            onPressed: () {
              Get.offAll(() => const HyphaBottomNavigation());
            },
            title: 'Close',
          ),
        ),
        body: Stack(
          children: [
            const HyphaHalfBackground(backgroundColor: HyphaColors.error, showTopBar: false),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    Image.asset('assets/images/warning.png', width: 240, height: 240),
                    const SizedBox(height: 24),
                    Text('Sorry...', textAlign: TextAlign.center, style: context.hyphaTextTheme.mediumTitles),
                    const SizedBox(height: 16),
                    failedText,
                    const SizedBox(height: 16),
                    Text(
                      'Please try again by triggering the transaction from the website or app. Sorry for the inconvenience.',
                      style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    ExpansionTile(
                      title: Text(
                        'Tap to see full error',
                        style: context.hyphaTextTheme.ralMediumBody.copyWith(
                          color: context.isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                      collapsedTextColor: context.hyphaTextTheme.ralMediumBody.color,
                      textColor: context.hyphaTextTheme.ralMediumBody.color,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(error.message, style: context.hyphaTextTheme.ralMediumBody),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
