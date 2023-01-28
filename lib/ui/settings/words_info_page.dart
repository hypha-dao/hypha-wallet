import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class WordsInfoPage extends StatelessWidget {
  const WordsInfoPage({super.key});

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
                Text('12 words', style: context.hyphaTextTheme.bigTitles.copyWith(color: HyphaColors.white)),
                const SizedBox(height: 8),
                Text('or “Recovery phrase”',
                    style: context.hyphaTextTheme.smallTitles.copyWith(color: HyphaColors.white)),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Text(
                  'The Secret Recovery Phrase is the secret that controls the wallet. If someone has this secret, they have complete access to the wallet. \n\nWrite down your Secret Recovery Phrase somewhere safe \n\nDouble-check your spelling and that you wrote down every word in the same order they were given',
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
