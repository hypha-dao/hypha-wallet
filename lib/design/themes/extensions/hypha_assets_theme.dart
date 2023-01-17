import 'package:flutter/material.dart';

/// Just add the Assets with light and dark versions.
@immutable
class HyphaAssetsTheme extends ThemeExtension<HyphaAssetsTheme> {
  final String hyphaLogoComposite;
  final String backgroundTexture;

  const HyphaAssetsTheme({
    required this.hyphaLogoComposite,
    required this.backgroundTexture,
  });

  @override
  HyphaAssetsTheme copyWith({
    String? hyphaLogoComposite,
    String? backgroundTexture,
  }) {
    return HyphaAssetsTheme(
      hyphaLogoComposite: hyphaLogoComposite ?? this.hyphaLogoComposite,
      backgroundTexture: backgroundTexture ?? this.backgroundTexture,
    );
  }

  @override
  HyphaAssetsTheme lerp(ThemeExtension<HyphaAssetsTheme>? other, double t) => this;

  @override
  String toString() => 'Assets Theme';

  // the light theme
  static HyphaAssetsTheme light = const HyphaAssetsTheme(
    hyphaLogoComposite: 'assets/images/logos/hypha_logo_composite.svg',
    backgroundTexture: 'assets/images/graphics/bg_texture_light.png',
  );

  // the dark theme
  static HyphaAssetsTheme dark = const HyphaAssetsTheme(
    hyphaLogoComposite: 'assets/images/logos/dark/hypha_logo_composite.svg',
    backgroundTexture: 'assets/images/graphics/bg_texture.png',
  );
}
