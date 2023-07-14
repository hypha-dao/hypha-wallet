import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/circle_with_icon/circle_with_icon.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class ColorArrowUp extends StatelessWidget {
  const ColorArrowUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleWithIcon(
      icon: Icon(Icons.arrow_upward, color: Colors.white),
      circleColor: HyphaColors.lightBlue,
      padding: EdgeInsets.all(4),
    );
  }
}
