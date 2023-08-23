import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child: FittedBox(
              fit: BoxFit.cover,
              child: Lottie.asset('assets/animations/hypha_splash.json', controller: _controller, animate: true,
                  onLoaded: (composition) {
                _controller
                  ..duration = composition.duration
                  ..forward().whenComplete(() {
                    final userAuthData = GetIt.I.get<AuthRepository>().currentAuthStatus;
                    if (userAuthData is Authenticated) {
                      if (Get.currentRoute != '/HyphaBottomNavigation') {
                        Get.offAll(() => const HyphaBottomNavigation());
                      }
                    } else {
                      if (Get.currentRoute != '/OnboardingPage') {
                        Get.offAll(() => const HyphaBottomNavigation());
                      }
                    }
                  });
              })),
        ));
  }
}
