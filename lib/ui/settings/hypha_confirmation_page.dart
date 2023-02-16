import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class HyphaConfirmationPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? rationale;
  final String image;
  final String primaryButtonText;
  final VoidCallback primaryButtonCallback;
  final String? secondaryButtonText;
  final VoidCallback? secondaryButtonCallback;

  const HyphaConfirmationPage({
    super.key,
    required this.title,
    required this.subtitle,
    this.rationale,
    required this.image,
    required this.primaryButtonText,
    required this.primaryButtonCallback,
    this.secondaryButtonText,
    this.secondaryButtonCallback,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: context.isDarkTheme ? HyphaColors.gradientBlack : HyphaColors.gradientWhite,
      ),
      child: Stack(
        children: [
          const HyphaHalfBackground(showTopBar: true),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 22),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      Image.asset(image, width: 200, height: 200),
                      Text(title, style: context.hyphaTextTheme.mediumTitles),
                      const SizedBox(height: 8),
                      Text(
                        subtitle,
                        style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.primaryBlu),
                        textAlign: TextAlign.center,
                      ),
                      if (rationale != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          rationale!,
                          style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                          textAlign: TextAlign.center,
                        ),
                      ]
                    ],
                  ),
                ),
                Column(
                  children: [
                    if (secondaryButtonText != null) ...[
                      HyphaAppButton(
                        title: secondaryButtonText!,
                        buttonType: ButtonType.secondary,
                        onPressed: secondaryButtonCallback,
                      ),
                      const SizedBox(height: 16),
                    ],
                    HyphaAppButton(title: primaryButtonText, onPressed: primaryButtonCallback),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
