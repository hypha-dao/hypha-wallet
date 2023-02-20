import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

enum ButtonType {
  primary,
  secondary,
  tertiary;

  Color? appButtonColor(bool isActive, bool isDarkTheme) {
    switch (this) {
      case ButtonType.primary:
        return isDarkTheme
            ? HyphaColors.lightBlack.withOpacity(isActive ? 0 : 0.60)
            : HyphaColors.primaryBlu.withOpacity(isActive ? 0 : 0.50);
      case ButtonType.secondary:
        return isDarkTheme
            ? HyphaColors.lightBlack.withOpacity(isActive ? 1 : 0.40)
            : isActive
                ? HyphaColors.white
                : HyphaColors.primaryBlu.withOpacity(isActive ? 0 : 0.50);
      case ButtonType.tertiary:
        return isDarkTheme ? HyphaColors.white.withOpacity(isActive ? 0 : 0) : null;
    }
  }

  Color appButtonTextColor(bool isActive, bool isDarkTheme) {
    switch (this) {
      case ButtonType.primary:
        return HyphaColors.offWhite.withOpacity(isActive ? 1 : 0.20);
      case ButtonType.tertiary:
        return isDarkTheme
            ? HyphaColors.offWhite.withOpacity(isActive ? 1 : 0.20)
            : HyphaColors.primaryBlu.withOpacity(isActive ? 1 : 0.20);
      case ButtonType.secondary:
        return isDarkTheme
            ? HyphaColors.offWhite.withOpacity(isActive ? 1 : 0.20)
            : isActive
                ? HyphaColors.primaryBlu
                : HyphaColors.offWhite.withOpacity(isActive ? 1 : 0.20);
    }
  }
}
