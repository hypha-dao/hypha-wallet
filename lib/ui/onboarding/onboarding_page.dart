import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page_background.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage();

  @override
  Widget build(BuildContext context) {
    return OnboardingPageBackground(
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/logos/hypha_logo_composite.svg'),
              Text('Welcome', style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(left: 54, right: 54),
                child: Text(
                    'Hypha Wallet allow you to do XYandZ. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                    style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.normal, color: context.textTheme.titleMedium?.color?.withOpacity(0.3))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
