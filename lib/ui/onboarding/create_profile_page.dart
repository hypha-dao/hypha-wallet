import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/ui/onboarding/create_account_page.dart';

class CreateProfilePage extends StatelessWidget {
  const CreateProfilePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Get.to(CreateAccountPage(), transition: Transition.rightToLeft);
        },
        child: Text('Next'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Create Account'),
            Icon(Icons.add_photo_alternate_outlined),
            TextFormField(decoration: InputDecoration(hintText: 'Name')),
            TextFormField(decoration: InputDecoration(hintText: 'Short Bio')),
          ],
        ),
      ),
    );
  }
}
