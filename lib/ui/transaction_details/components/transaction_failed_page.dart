import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';

class TransactionFailedPage extends StatelessWidget {
  const TransactionFailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HyphaAppButton(
        onPressed: () {
          Get.offAll(() => const HyphaBottomNavigation());
        },
        title: 'Done',
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            const Text('Fail', textAlign: TextAlign.center),
            const SizedBox(height: 16),
            const Icon(Icons.snowboarding, size: 64),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
