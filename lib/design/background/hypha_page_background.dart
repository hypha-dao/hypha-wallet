import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class HyphaPageBackground extends StatelessWidget {
  final bool withOpacity;
  final bool withGradient;
  final Widget child;
  final String? backgroundTexture;
  final LinearGradient? gradient;

  const HyphaPageBackground({
    super.key,
    required this.child,
    this.withOpacity = true,
    this.withGradient = false,
    this.backgroundTexture,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    final opacityColor = context.isDarkTheme ? HyphaColors.darkBlack : HyphaColors.darkWhite;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(5, 15, 33, 1.0),
        gradient: withGradient
            ? context.isDarkTheme
                ? HyphaColors.gradientBlack
                : gradient ?? HyphaColors.gradientWhite
            : null,
        image: withGradient
            ? null
            : DecorationImage(
                colorFilter: withOpacity ? ColorFilter.mode(opacityColor.withOpacity(0.60), BlendMode.darken) : null,
                image: AssetImage(backgroundTexture ?? context.hyphaAssetTheme.backgroundTexture),
                fit: BoxFit.cover,
              ),
      ),
      child: child,
    );
  }
}
