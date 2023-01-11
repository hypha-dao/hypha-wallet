import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class AppBottomNavigationTheme {
  static BottomNavigationBarThemeData bottomNavigationThemeData(
    ColorScheme colorScheme,
    // MindsetTextTheme mindsetTextTheme,
  ) {
    return BottomNavigationBarThemeData(
      backgroundColor: HyphaColors.lightBlack,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: HyphaColors.lightBlue,
      // unselectedItemColor: HyphaColors.darkBlue,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      type: BottomNavigationBarType.fixed,
      // selectedLabelStyle: mindsetTextTheme.tiny,
      // unselectedLabelStyle: mindsetTextTheme.tiny,
    );
  }
}
