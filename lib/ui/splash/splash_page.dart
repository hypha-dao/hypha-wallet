import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  /// If true, means we are authenticated and navigate to bottom page: Else navigate to onboarding.
  final bool isAuthenticated;

  const SplashScreen({super.key, required this.isAuthenticated});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Lottie.asset(
        'assets/animations/hypha_splash.json',
        controller: _controller,
        height: MediaQuery.of(context).size.height * 1,
        animate: true,
        onLoaded: (composition) {
          _controller
            ..duration = composition.duration
            ..forward().whenComplete(() => Get.offAll(
                  widget.isAuthenticated ? const HyphaBottomNavigation() : const OnboardingPage(),
                ));
        },
      ),
    );
  }
}
