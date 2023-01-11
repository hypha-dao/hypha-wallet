import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/onboarding_page_background.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page_with_link.dart';
import 'package:hypha_wallet/ui/onboarding/select_import_method.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage();

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withOpacity: false,
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 45),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              HyphaAppButton(
                margin: EdgeInsets.symmetric(horizontal: 45),
                onPressed: () {
                  Get.to(() => OnboardingPageWithLink(), transition: Transition.rightToLeft);
                },
                title: 'Sign-Up',
                buttonType: ButtonType.secondary,
              ),
              SizedBox(height: 20),
              HyphaAppButton(
                margin: EdgeInsets.symmetric(horizontal: 45),
                onPressed: () {
                  Get.to(() => SelectImportMethod(), transition: Transition.rightToLeft);
                },
                title: 'Import Account',
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 110),
              SvgPicture.asset(context.hyphaAssetTheme.hyphaLogoComposite, width: 80, height: 110),
              SizedBox(height: 78),
              Text('Welcome', style: context.hyphaTextTheme.mediumTitles),
              SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.only(left: 54, right: 54),
                child: Text(
                  'IF you already have an Hypha account please click “Import account” button and follow the steps. \n\nIf you don’t have an Hypha account yet, please click “Sign-up” button and proceed to dao.hypha.earth to receive an invite.',
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
