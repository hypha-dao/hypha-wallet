import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/bottom_component/hypha_safe_bottom_navigation_bar.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/onboarding/select_import_method.dart';
import 'package:url_launcher/url_launcher.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _launchUrl() async {
      const _url = 'https://dao.hypha.earth/';
      if (!await launchUrl(Uri.parse(_url))) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Error Launching URL. Please visit dao.hypha.earth'),
        ));
      }
    }

    return HyphaPageBackground(
      withOpacity: false,
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        bottomNavigationBar: HyphaSafeBottomNavigationBar(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              HyphaAppButton(
                onPressed: () {
                  _launchUrl();
                },
                title: 'Sign Up',
                buttonType: ButtonType.secondary,
              ),
              const SizedBox(height: 20),
              HyphaAppButton(
                onPressed: () {
                  Get.to(() => const SelectImportMethod(), transition: Transition.rightToLeft);
                },
                title: 'Import Account',
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 110),
                SvgPicture.asset(context.hyphaAssetTheme.hyphaLogoComposite, width: 80, height: 110),
                const SizedBox(height: 78),
                Text('Welcome', style: context.hyphaTextTheme.mediumTitles),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.only(left: 54, right: 54),
                  child: Text(
                    'If you already have an Hypha account please click “Import account” button and follow the steps. \n\nIf you don’t have an Hypha account yet, please click “Sign up” button and proceed to dao.hypha.earth to create an account.',
                    style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
