import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/bottom_component/hypha_safe_bottom_navigation_bar.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';
import 'package:hypha_wallet/ui/proposals/creation/interactor/proposal_creation_bloc.dart';

class SignTransactionFailedPage extends StatelessWidget {
  final HyphaError error;
  final String text1;
  final String text2;

  const SignTransactionFailedPage(this.error, {super.key, this.text1 = 'This transaction ', this.text2 = 'Please try again by triggering the transaction from the website or app. Sorry for the inconvenience.'});

  @override
  Widget build(BuildContext context) {
    final failedText = RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: context.hyphaTextTheme.regular.copyWith(
          color: context.isDarkTheme ? HyphaColors.white : HyphaColors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: text1,
            style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.error),
          ),
          const TextSpan(text: ' '),
          const TextSpan(text: 'failed'),
        ],
      ),
    );

    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        bottomNavigationBar: HyphaSafeBottomNavigationBar(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              HyphaAppButton(
                buttonType: ButtonType.secondary,
                onPressed: () {
                  Get.back();
                  context.read<ProposalCreationBloc>().add(const ProposalCreationEvent.publishProposal());
                },
                title: 'Retry',
              ),
              const SizedBox(height: 20),
              HyphaAppButton(
                buttonType: ButtonType.secondary,
                onPressed: () {
                  Get.offAll(() => const HyphaBottomNavigation());
                },
                title: 'Close',
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            const HyphaHalfBackground(backgroundColor: HyphaColors.error, showTopBar: false),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    Image.asset('assets/images/warning.png', width: 240, height: 240),
                    const SizedBox(height: 24),
                    failedText,
                    const SizedBox(height: 16),
                    Text(
                      text2,
                      style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    ExpansionTile(
                      title: Text(
                        'Tap to see full error',
                        style: context.hyphaTextTheme.ralMediumBody.copyWith(
                          color: context.isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                      collapsedTextColor: context.hyphaTextTheme.ralMediumBody.color,
                      textColor: context.hyphaTextTheme.ralMediumBody.color,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(error.message, style: context.hyphaTextTheme.ralMediumBody),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
