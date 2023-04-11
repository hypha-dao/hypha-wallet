import 'package:flutter/material.dart';

class HyphaColors {
  /// Primary colors
  static const primaryBlu = Color(0xFF498AE5);
  static const offWhite = Color(0xFFF4F6F8);
  static const darkWhite = Color(0xFFECEFF4);
  static const boxShadow = Color(0xFF33507C);

  static const error = Color(0xFFE23D50);
  static const success = Color(0xFF1CB59B);

  static const lightBlue = Color(0xFF61A9FC);
  static const darkBlue = Color(0xFF315BCE);

  /// Neutral Colors
  /// Neutrals with blacks, white, and greys for text, overlays, borders, and other similar components
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const lightBlack = Color(0xFF1A2636);
  static const darkBlack = Color(0xFF0B121C);
  static const gradientBlackLight = Color(0xFF131D2B);
  static const midGrey = Color(0xFF5F6F84);

  static final black50 = const Color(0xFF000000).withOpacity(0.50);
  static const transparent = Color(0x00000000);

  /// Gradients
  static const gradientBlu = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [lightBlue, darkBlue],
  );

  static const gradientBlack = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [gradientBlackLight, darkBlack],
  );

  static const gradientWhite = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [offWhite, darkWhite],
  );

  static List<BoxShadow> darkModeBottomMenuShadow = [
    BoxShadow(
      blurRadius: 22,
      color: HyphaColors.black.withOpacity(.40),
    )
  ];

  static List<BoxShadow> darkModeCardShadow = [
    BoxShadow(
      blurRadius: 16,
      color: HyphaColors.black.withOpacity(.08),
    )
  ];

  static List<BoxShadow> lightModeBottomMenuShadow = [
    BoxShadow(
      blurRadius: 22,
      color: HyphaColors.boxShadow.withOpacity(.08),
    )
  ];

  static List<BoxShadow> lightModeCardShadow = [
    BoxShadow(
      blurRadius: 16,
      color: HyphaColors.boxShadow.withOpacity(.08),
    )
  ];
}
