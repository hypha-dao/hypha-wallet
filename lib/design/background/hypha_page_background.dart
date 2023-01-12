import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class HyphaPageBackground extends StatelessWidget {
  final bool withOpacity;
  final bool withGradient;
  final Widget child;

  const HyphaPageBackground({super.key, required this.child, this.withOpacity = true, this.withGradient = false});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: withGradient
            ? context.isDarkTheme
                ? HyphaColors.gradientBlack
                : HyphaColors.gradientWhite
            : null,
        image: withGradient
            ? null
            : DecorationImage(
                colorFilter:
                    withOpacity ? ColorFilter.mode(HyphaColors.darkBlack.withOpacity(0.85), BlendMode.darken) : null,
                image: AssetImage(context.hyphaAssetTheme.onboardingBackground),
                fit: BoxFit.cover,
              ),
      ),
      child: child,
    );
  }
}
