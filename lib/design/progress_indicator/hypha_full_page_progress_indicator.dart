import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/progress_indicator/hypha_progress_logo.dart';

class HyphaFullPageProgressIndicator {
  static Future<Object?> show(BuildContext context) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) {
        return const Scaffold(
          body: HyphaPageBackground(
            child: HyphaProgressLogo(),
          ),
        );
      },
    );
  }
}
