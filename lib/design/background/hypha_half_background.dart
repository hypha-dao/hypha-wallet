import 'package:flutter/cupertino.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class HyphaHalfBackground extends StatelessWidget {
  final Color? backgroundColor;
  const HyphaHalfBackground({super.key, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: backgroundColor,
        gradient: backgroundColor == null ? HyphaColors.gradientBlu : null,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.elliptical(180, 40),
          bottomRight: Radius.elliptical(180, 40),
        ),
      ),
    );
  }
}
