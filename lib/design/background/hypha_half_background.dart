import 'package:flutter/cupertino.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class HyphaHalfBackground extends StatelessWidget {
  const HyphaHalfBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: const BoxDecoration(
        gradient: HyphaColors.gradientBlu,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(180, 40),
          bottomRight: Radius.elliptical(180, 40),
        ),
      ),
    );
  }
}
