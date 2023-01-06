import 'package:flutter/material.dart';

class OnboardingPageBackground extends StatelessWidget {
  final Widget child;

  const OnboardingPageBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/graphics/bg_texture.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
