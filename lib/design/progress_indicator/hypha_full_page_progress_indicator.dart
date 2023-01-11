import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/background/onboarding_page_background.dart';
import 'package:hypha_wallet/design/progress_indicator/hypha_progress_logo.dart';

class HyphaFullPageProgressIndicator {
  static show(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      transitionDuration: Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) {
        return Scaffold(
          body: HyphaPageBackground(
            child: HyphaProgressLogo(),
          ),
        );
      },
    );
  }
}
