import 'package:flutter/material.dart';
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

  const HyphaAppButton({
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.isActive = true,
    required this.title,
    this.icon,
    this.isFullWidth = true,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(80);
    return Padding(
      padding: margin,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        padding: const EdgeInsets.all(0.0),
        onPressed: () {
          onPressed?.call();
        },
        color: HyphaColors.lightBlack,
        child: Ink(
          decoration: isActive
              ? BoxDecoration(
                  gradient: HyphaColors.gradientBlu,
                  borderRadius: borderRadius,
                )
              : null,
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
                items.add(Text(title.toUpperCase(), style: context.hyphaTextTheme.buttons));
              }

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: isFullWidth ? MainAxisSize.max : MainAxisSize.min,
                  children: items,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
