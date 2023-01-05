import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

enum ButtonType {
  primary,
  secondary,
  tertiary,
  destructive;

  ButtonStyle? appButtonStyle(BuildContext context) {
    final buttonStyle = ElevatedButtonTheme.of(context).style;

    switch (this) {
      case ButtonType.primary:
        return buttonStyle?.merge(ElevatedButton.styleFrom(backgroundColor: HyphaColors.green));
      case ButtonType.secondary:
        return buttonStyle?.merge(
          ElevatedButton.styleFrom(backgroundColor: HyphaColors.white.withOpacity(0.40)),
        );
      case ButtonType.tertiary:
        return buttonStyle?.merge(
          ElevatedButton.styleFrom(backgroundColor: HyphaColors.black40, elevation: 0.0),
        );
      case ButtonType.destructive:
        return buttonStyle?.merge(ElevatedButton.styleFrom(backgroundColor: HyphaColors.red));
    }
  }
}
