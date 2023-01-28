import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class LogoutConfirmationPage extends StatelessWidget {
  const LogoutConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const HyphaHalfBackground(),
        Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 44),
                    const Icon(Icons.logout, size: 200),
                    Text('Log-out', style: context.hyphaTextTheme.mediumTitles),
                    const SizedBox(height: 8),
                    Text(
                      'Are you sure you want\n to log-out?',
                      style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.primaryBlu),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  HyphaAppButton(
                    title: 'YES LOG-OUT',
                    onPressed: () {
                      Get.back(result: true);
                    },
                  ),
                  const SizedBox(height: 16),
                  HyphaAppButton(
                    title: 'NO, NEVER MIND',
                    buttonType: ButtonType.secondary,
                    onPressed: () {
                      Get.back(result: false);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
