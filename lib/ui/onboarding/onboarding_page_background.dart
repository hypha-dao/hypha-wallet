import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class OnboardingPageBackground extends StatelessWidget {
  final Widget child;

  const OnboardingPageBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(HyphaColors.darkBlack.withOpacity(0.85), BlendMode.darken),
          image: AssetImage(context.hyphaAssetTheme.onboardingBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}