import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/onboarding/create_profile_page.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page_background.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage();

  @override
  Widget build(BuildContext context) {
    return OnboardingPageBackground(
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        bottomNavigationBar: SafeArea(
          child: HyphaAppButton(
            margin: EdgeInsets.symmetric(horizontal: 45, vertical: 40),
            onPressed: () {
              Get.to(() => CreateProfilePage(), transition: Transition.rightToLeft);
            },
            title: 'CREATE ACCOUNT',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 160),
              SvgPicture.asset(context.hyphaAssetTheme.hyphaLogoComposite, width: 80, height: 110),
              SizedBox(height: 78),
              Text('Welcome', style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
              SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.only(left: 54, right: 54),
                child: Text(
                  'Hypha Wallet allow you to do XYandZ. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.normal,
                    color: context.textTheme.titleMedium?.color?.withOpacity(0.5),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
