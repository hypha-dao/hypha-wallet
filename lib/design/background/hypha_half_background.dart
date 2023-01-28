import 'package:flutter/cupertino.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class HyphaHalfBackground extends StatelessWidget {
  final Color? backgroundColor;
  final Widget? child;
  const HyphaHalfBackground({super.key, this.backgroundColor, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        gradient: backgroundColor == null ? HyphaColors.gradientBlu : null,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.elliptical(180, 40),
          bottomRight: Radius.elliptical(180, 40),
        ),
      ),
      child: child,
    );
  }
}
