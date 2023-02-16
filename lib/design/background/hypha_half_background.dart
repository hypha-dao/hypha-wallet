import 'package:flutter/cupertino.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class HyphaHalfBackground extends StatelessWidget {
  final Color? backgroundColor;
  final Widget? child;
  final bool showTopBar;

  const HyphaHalfBackground({super.key, this.backgroundColor, this.child, required this.showTopBar});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
        ),
        if (showTopBar)
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(width: 60, height: 2, color: HyphaColors.darkBlack.withOpacity(0.10)),
            ),
          ),
      ],
    );
  }
}
