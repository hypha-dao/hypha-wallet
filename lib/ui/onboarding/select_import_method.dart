import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/icons/hypha_icons.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/onboarding/components/onboarding_appbar.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/import_key/import_account_by_key_page.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/import_words/import_account_page.dart';

class SelectImportMethod extends StatelessWidget {
  const SelectImportMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const OnboardingAppbar(title: 'Import your', subTitle: 'Hypha Account'),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Select your preferred method to import your account',
                style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.primaryBlu),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 120),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _SquareButton(
                    icon: HyphaIcons.onboarding_key,
                    text: 'Private key',
                    onTap: () {
                      Get.to(() => const ImportAccountByKeyPage(), transition: Transition.rightToLeft);
                    },
                  ),
                  _SquareButton(
                    icon: HyphaIcons.list,
                    text: '12 Words',
                    onTap: () {
                      Get.to(() => const ImportAccountPage(), transition: Transition.rightToLeft);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SquareButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final GestureTapCallback onTap;

  const _SquareButton({required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Ink(
            padding: const EdgeInsets.all(44),
            decoration: BoxDecoration(
              color: context.isDarkTheme ? HyphaColors.lightBlack : HyphaColors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, size: 50, color: context.isDarkTheme ? HyphaColors.white : HyphaColors.primaryBlu),
          ),
        ),
        const SizedBox(height: 20),
        Text(text, style: context.hyphaTextTheme.ralMediumBody),
      ],
    );
  }
}
