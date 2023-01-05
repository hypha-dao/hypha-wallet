import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class HyphaAppButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final bool isLoading;
  final ButtonType buttonType;
  final Icon? icon;
  final bool isFullWidth;
  final EdgeInsets margin;

  const HyphaAppButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
    this.buttonType = ButtonType.primary,
    required this.title,
    this.icon,
    this.isFullWidth = true,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: ElevatedButton(
        style: buttonType.appButtonStyle(context),
        onPressed: onPressed,
        child: Builder(
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
              items.add(Text(title));
            }

            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: isFullWidth ? MainAxisSize.max : MainAxisSize.min,
              children: items,
            );
          },
        ),
      ),
    );
  }
}
