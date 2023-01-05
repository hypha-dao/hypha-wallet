import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class HyphaTheme {
  static ThemeData get darkTheme {
    var baseTheme = ThemeData(brightness: Brightness.dark);
    var mainTextTheme = GoogleFonts.ralewayTextTheme(baseTheme.textTheme);

    return baseTheme.copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: HyphaColors.green).copyWith(
        brightness: Brightness.dark,
      ),
      textTheme: mainTextTheme.copyWith(
        button: GoogleFonts.poppins(textStyle: mainTextTheme.button),
      ),
      extensions: const <ThemeExtension<dynamic>>[],
    );
  }

  static ThemeData get lightTheme {
    var mainTextTheme = GoogleFonts.ralewayTextTheme();

    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: HyphaColors.red).copyWith(
        brightness: Brightness.light,
      ),
      textTheme: mainTextTheme.copyWith(
        button: GoogleFonts.poppins(textStyle: mainTextTheme.button),
      ),
      extensions: const <ThemeExtension<dynamic>>[],
    );
  }
}
