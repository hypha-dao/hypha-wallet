import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';

class HyphaProgressLogo extends StatelessWidget {
  const HyphaProgressLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 98,
            height: 98,
            child: const CircularProgressIndicator(strokeWidth: 2, color: HyphaColors.primaryBlu),
          ),
        ),
        Center(
          child: SvgPicture.asset(
            'assets/images/logos/hypha_logo.svg',
            width: 72,
            height: 72,
          ),
        ),
      ],
    );
  }
}
