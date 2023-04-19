import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/bottom_component/hypha_safe_bottom_navigation_bar.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/ui/onboarding/check_phrase_page.dart';

class SavePhrasePage extends StatelessWidget {
  const SavePhrasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HyphaSafeBottomNavigationBar(
        child: HyphaAppButton(
          onPressed: () {
            Get.to(() => const CheckPhrasePage(), transition: Transition.rightToLeft);
          },
          title: 'Next',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Save Phrase'),
            const Text('Save Phrase info text'),
            GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2,
              ),
              children: [
                const Text('word 1', textAlign: TextAlign.center),
                const Text('word 1', textAlign: TextAlign.center),
                const Text('word 1', textAlign: TextAlign.center),
                const Text('word 1', textAlign: TextAlign.center),
                const Text('word 1', textAlign: TextAlign.center),
                const Text('word 1', textAlign: TextAlign.center),
                const Text('word 1', textAlign: TextAlign.center),
                const Text('word 1', textAlign: TextAlign.center),
                const Text('word 1', textAlign: TextAlign.center),
                const Text('word 1', textAlign: TextAlign.center),
                const Text('word 1', textAlign: TextAlign.center),
                const Text('word 1', textAlign: TextAlign.center),
              ],
            )
          ],
        ),
      ),
    );
  }
}
