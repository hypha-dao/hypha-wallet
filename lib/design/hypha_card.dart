import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class HyphaCard extends StatelessWidget {
  final Widget child;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;

  const HyphaCard({super.key, required this.child, this.borderRadius, this.padding});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
        borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(16)),
        boxShadow: context.isDarkMode ? HyphaColors.darkModeCardShadow : HyphaColors.lightModeCardShadow,
      ),
      child: padding?.let((it) => Padding(padding: it, child: child)) ?? child,
    );
  }
}
