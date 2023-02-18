import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class SliderButton extends StatelessWidget {
  const SliderButton({
    super.key,
    required this.isDown,
  });

  final bool isDown;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isDown ? HyphaColors.white.withOpacity(0.25) : null,
        gradient: isDown ? null : HyphaColors.gradientBlu,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
      ),
      child: Center(
        child: Row(
          children: [
            const SizedBox(width: 6),
            const Icon(Icons.keyboard_double_arrow_left, color: HyphaColors.white),
            const SizedBox(width: 6),
            Icon(Icons.do_not_disturb_on_total_silence, color: HyphaColors.white.withAlpha(90), size: 6),
            const SizedBox(width: 6),
            const Icon(Icons.keyboard_double_arrow_right, color: HyphaColors.white),
            const SizedBox(width: 6),
          ],
        ),
      ),
    );
  }
}
