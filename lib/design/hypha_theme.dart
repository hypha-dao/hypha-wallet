import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class HyphaTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: HyphaColors.green).copyWith(
        brightness: Brightness.dark,
      ),
      extensions: const <ThemeExtension<dynamic>>[],
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(seedColor: HyphaColors.green).copyWith(
        brightness: Brightness.light,
      ),
      extensions: const <ThemeExtension<dynamic>>[],
    );
  }
}
