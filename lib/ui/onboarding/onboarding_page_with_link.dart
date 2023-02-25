import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/onboarding/create_profile/create_profile_page.dart';

class OnboardingPageWithLink extends StatelessWidget {
  const OnboardingPageWithLink({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        bottomNavigationBar: SafeArea(
          child: HyphaAppButton(
            margin: const EdgeInsets.symmetric(horizontal: 45, vertical: 40),
            onPressed: () {
              Get.to(() => const CreateProfilePage(), transition: Transition.rightToLeft);
            },
            title: 'CREATE ACCOUNT',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 140),
              SvgPicture.asset(context.hyphaAssetTheme.hyphaLogoComposite, width: 80, height: 110),
              const SizedBox(height: 78),
              Text('Welcome', style: context.hyphaTextTheme.mediumTitles),
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.only(left: 54, right: 54),
                child: Text(
                  'The Hypha Wallet allows you to create a Hypha account, manage your keys and sign blockchain transactions in the DAO',
                  style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
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
