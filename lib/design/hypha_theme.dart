import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypha_wallet/design/color_scheme/color_schemes.g.dart';

class HyphaTheme {
  static ThemeData get darkTheme {
    var baseTheme = ThemeData(brightness: Brightness.dark);
    var mainTextTheme = GoogleFonts.ralewayTextTheme(baseTheme.textTheme);

    return baseTheme.copyWith(
      colorScheme: darkColorScheme,
      textTheme: mainTextTheme.copyWith(
        titleMedium: GoogleFonts.poppins(textStyle: mainTextTheme.titleMedium),
        titleLarge: GoogleFonts.poppins(textStyle: mainTextTheme.titleLarge),
        titleSmall: GoogleFonts.poppins(textStyle: mainTextTheme.titleSmall),
      ),
      extensions: const <ThemeExtension<dynamic>>[],
    );
  }

  static ThemeData get lightTheme {
    var mainTextTheme = GoogleFonts.ralewayTextTheme();

    return ThemeData(
      colorScheme: lightColorScheme,
      textTheme: mainTextTheme.copyWith(
        titleMedium: GoogleFonts.poppins(textStyle: mainTextTheme.titleMedium),
        titleLarge: GoogleFonts.poppins(textStyle: mainTextTheme.titleLarge),
        titleSmall: GoogleFonts.poppins(textStyle: mainTextTheme.titleSmall),
      ),
      extensions: const <ThemeExtension<dynamic>>[],
    );
  }
}
