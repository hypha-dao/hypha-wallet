import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';

class TransactionSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
          onPressed: () {
            Get.offAll(() => const HyphaBottomNavigation());
          },
          child: Text('Done')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            Text('Success', textAlign: TextAlign.center),
            SizedBox(height: 16),
            Icon(Icons.snowboarding, size: 64),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
