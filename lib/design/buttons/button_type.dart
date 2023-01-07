import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

enum ButtonType {
  primary,
  secondary,
  tertiary;

  Color appButtonColor(bool isActive) {
    switch (this) {
      case ButtonType.primary:
        return HyphaColors.lightBlack.withOpacity(isActive ? 0 : 0.60);
      case ButtonType.secondary:
        return HyphaColors.lightBlack.withOpacity(isActive ? 1 : 0.40);
      case ButtonType.tertiary:
        return HyphaColors.white.withOpacity(isActive ? 0 : 0);
    }
  }
}
