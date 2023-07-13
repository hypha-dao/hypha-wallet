import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class ColorArrowUp extends StatelessWidget {
  const ColorArrowUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(color: HyphaColors.lightBlue, shape: BoxShape.circle),
      child: const Icon(Icons.arrow_upward, color: Colors.white),
    );
  }
}
