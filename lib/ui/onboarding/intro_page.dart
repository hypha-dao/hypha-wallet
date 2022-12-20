import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/ui/onboarding/create_profile_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Get.to(CreateProfilePage(), transition: Transition.rightToLeft);
        },
        child: Text('Create Account'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.ac_unit),
            Text('Welcome'),
            Text('More Info'),
          ],
        ),
      ),
    );
  }
}
