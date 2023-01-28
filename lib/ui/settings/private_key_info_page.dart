import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class PrivateKeyInfoPage extends StatelessWidget {
  const PrivateKeyInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: context.isDarkTheme ? HyphaColors.gradientBlack : HyphaColors.gradientWhite,
      ),
      child: Column(
        children: [
          HyphaHalfBackground(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Private Key', style: context.hyphaTextTheme.bigTitles.copyWith(color: HyphaColors.white)),
                const SizedBox(height: 8),
                Text('What is it?', style: context.hyphaTextTheme.smallTitles.copyWith(color: HyphaColors.white)),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(44),
                child: Text(
                  'A private key is a secret number that is used in cryptography, similar to a password. In cryptocurrency, private keys are also used to sign transactions and prove ownership of a blockchain address.\n\n This key can be used to import that account, and that account only, into a different wallet.\n\n Private keys can be stored on computers or mobile phones, USB drives, a specialized hardware wallet, or even a piece of paper.',
                  style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          HyphaAppButton(
            margin: const EdgeInsets.all(22),
            title: 'Close',
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
