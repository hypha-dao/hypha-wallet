import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class HyphaAppButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isActive;
  final Icon? icon;
  final bool isFullWidth;
  final EdgeInsets margin;
  final ButtonType buttonType;

  const HyphaAppButton({
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.isActive = true,
    required this.title,
    this.icon,
    this.isFullWidth = true,
    this.margin = EdgeInsets.zero,
    this.buttonType = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(80);
    final buttonColor = buttonType.appButtonColor(isActive, context.isDarkTheme);
    final Color textColor = buttonType.appButtonTextColor(isActive, context.isDarkTheme);

    final body = Builder(
      builder: (context) {
        final List<Widget> items = [];
        if (isLoading) {
          items.add(const SizedBox(
            height: 22,
            width: 22,
            child: CircularProgressIndicator(color: HyphaColors.white, strokeWidth: 2),
          ));
        } else {
          if (icon != null) {
            items.add(icon!);
            items.add(const SizedBox(width: 8));
          }
          items.add(
            Text(
              title.toUpperCase(),
              style: context.hyphaTextTheme.buttons.copyWith(color: textColor, fontWeight: FontWeight.w900),
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: isFullWidth ? MainAxisSize.max : MainAxisSize.min,
            children: items,
          ),
        );
      },
    );

    Widget child;
    switch (buttonType) {
      case ButtonType.primary:
        child = Ink(
          decoration: isActive ? BoxDecoration(gradient: HyphaColors.gradientBlu, borderRadius: borderRadius) : null,
          child: body,
        );
        break;
      case ButtonType.secondary:
      case ButtonType.tertiary:
        child = body;
        break;
    }

    return Padding(
      padding: margin,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        padding: const EdgeInsets.all(0.0),
        elevation: 0,
        visualDensity: VisualDensity.compact,
        onPressed: () {
          onPressed?.call();
        },
        color: buttonColor,
        child: child,
      ),
    );
  }
}
