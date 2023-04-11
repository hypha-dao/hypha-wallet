import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class HyphaCard extends StatelessWidget {
  final Widget child;

  const HyphaCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        boxShadow: context.isDarkMode ? HyphaColors.darkModeCardShadow : HyphaColors.lightModeCardShadow,
      ),
      child: child,
    );
  }
}
