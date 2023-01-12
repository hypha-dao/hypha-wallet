import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypha_wallet/design/color_scheme/color_schemes.g.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/app_bottom_navigation_theme.dart';
import 'package:hypha_wallet/design/themes/extensions/hypha_assets_theme.dart';
import 'package:hypha_wallet/design/themes/extensions/hypha_text_theme.dart';

class HyphaTheme {
  static ThemeData get darkTheme {
    var baseTheme = ThemeData(brightness: Brightness.dark);
    var mainTextTheme = GoogleFonts.ralewayTextTheme(baseTheme.textTheme);

    return baseTheme.copyWith(
      colorScheme: darkColorScheme,
      textTheme: mainTextTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: HyphaColors.transparent,
        elevation: 0,
        titleTextStyle: HyphaTextTheme.dark.smallTitles,
      ),
      bottomNavigationBarTheme: AppBottomNavigationTheme.bottomNavigationThemeData(darkColorScheme),
      extensions: <ThemeExtension<dynamic>>[
        HyphaAssetsTheme.dark,
        HyphaTextTheme.dark,
      ],
    );
  }

  static ThemeData get lightTheme {
    var baseTheme = ThemeData(brightness: Brightness.light);
    var mainTextTheme = GoogleFonts.ralewayTextTheme(baseTheme.textTheme);

    return baseTheme.copyWith(
      colorScheme: lightColorScheme,
      textTheme: mainTextTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: HyphaColors.transparent,
        iconTheme: IconThemeData(color: HyphaColors.black),
        elevation: 0,
        titleTextStyle: HyphaTextTheme.light.smallTitles.copyWith(color: HyphaColors.black),
      ),
      bottomNavigationBarTheme: AppBottomNavigationTheme.bottomNavigationThemeData(lightColorScheme),
      extensions: <ThemeExtension<dynamic>>[
        HyphaAssetsTheme.light,
        HyphaTextTheme.light,
      ],
    );
  }
}
