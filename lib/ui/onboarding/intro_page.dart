import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/ui/onboarding/create_profile/create_profile_page.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/import_account_page.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page_background.dart';

class IntroPage extends StatelessWidget {
  const IntroPage();

  @override
  Widget build(BuildContext context) {
    return OnboardingPageBackground(
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            HyphaAppButton(
              margin: EdgeInsets.symmetric(horizontal: 45),
              onPressed: () {
                Get.to(() => CreateProfilePage(), transition: Transition.rightToLeft);
              },
              title: 'Create Account',
            ),
            SizedBox(height: 8),
            HyphaAppButton(
              margin: EdgeInsets.symmetric(horizontal: 45),
              onPressed: () {
                Get.to(() => ImportAccountPage(), transition: Transition.rightToLeft);
              },
              title: 'Import Account',
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/logos/hypha_logo_composite.svg'),
              Text('Welcome'),
              Text('More Info'),
            ],
          ),
        ),
      ),
    );
  }
}
