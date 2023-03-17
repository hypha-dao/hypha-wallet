import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypha_wallet/design/color_scheme/color_schemes.g.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/app_bottom_navigation_theme.dart';
import 'package:hypha_wallet/design/themes/extensions/hypha_assets_theme.dart';
import 'package:hypha_wallet/design/themes/extensions/hypha_text_theme.dart';

class HyphaTheme {
  static ThemeData get darkTheme {
    final baseTheme = ThemeData(brightness: Brightness.dark);
    final mainTextTheme = GoogleFonts.ralewayTextTheme(baseTheme.textTheme);

    return baseTheme.copyWith(
      colorScheme: darkColorScheme,
      textTheme: mainTextTheme,
      switchTheme: const SwitchThemeData(
        trackColor: MaterialStatePropertyAll(HyphaColors.primaryBlu),
        thumbColor: MaterialStatePropertyAll(HyphaColors.offWhite),
      ),
      iconTheme: const IconThemeData(color: HyphaColors.white),
      appBarTheme: AppBarTheme(
        backgroundColor: HyphaColors.transparent,
        elevation: 0,
        titleTextStyle: HyphaTextTheme.dark.smallTitles,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light, // For Android (light icons)
          statusBarBrightness: Brightness.dark, // For iOS (light icons)
        ),
      ),
      bottomNavigationBarTheme: AppBottomNavigationTheme.bottomNavigationThemeData(darkColorScheme),
      extensions: <ThemeExtension<dynamic>>[
        HyphaAssetsTheme.dark,
        HyphaTextTheme.dark,
      ],
    );
  }

  static ThemeData get lightTheme {
    final baseTheme = ThemeData(brightness: Brightness.light);
    final mainTextTheme = GoogleFonts.ralewayTextTheme(baseTheme.textTheme);

    return baseTheme.copyWith(
      colorScheme: lightColorScheme,
      textTheme: mainTextTheme,
      switchTheme: const SwitchThemeData(
        trackColor: MaterialStatePropertyAll(HyphaColors.primaryBlu),
        thumbColor: MaterialStatePropertyAll(HyphaColors.offWhite),
      ),
      iconTheme: const IconThemeData(color: HyphaColors.black),
      appBarTheme: AppBarTheme(
        backgroundColor: HyphaColors.transparent,
        iconTheme: const IconThemeData(color: HyphaColors.black),
        elevation: 0,
        titleTextStyle: HyphaTextTheme.light.smallTitles.copyWith(color: HyphaColors.black),
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.light, // For Android (light icons)
          statusBarBrightness: Brightness.dark, // For iOS (light icons)
        ),
      ),
      bottomNavigationBarTheme: AppBottomNavigationTheme.bottomNavigationThemeData(lightColorScheme),
      extensions: <ThemeExtension<dynamic>>[
        HyphaAssetsTheme.light,
        HyphaTextTheme.light,
      ],
    );
  }
}
