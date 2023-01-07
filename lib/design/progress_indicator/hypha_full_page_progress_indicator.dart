import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/progress_indicator/hypha_progress_logo.dart';
import 'package:hypha_wallet/ui/onboarding/components/onboarding_page_background.dart';

class HyphaFullPageProgressIndicator {
  static show(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      transitionDuration: Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          body: OnboardingPageBackground(
            child: HyphaProgressLogo(),
          ),
        );
      },
    );
  }
}
