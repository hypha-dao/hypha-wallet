import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/ui/onboarding/create_profile_page.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/import_account_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HyphaAppButton(
            onPressed: () {
              Get.to(() => CreateProfilePage(), transition: Transition.rightToLeft);
            },
            title: 'Create Account',
          ),
          HyphaAppButton(
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
            Icon(Icons.ac_unit),
            Text('Welcome'),
            Text('More Info'),
          ],
        ),
      ),
    );
  }
}
