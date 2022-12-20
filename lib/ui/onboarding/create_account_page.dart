import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account_page.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        child: Text('Next'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Create Account'),
            Icon(Icons.image),
            TextFormField(
              initialValue: 'GeryG',
              decoration: InputDecoration(hintText: 'Name'),
            ),
            Text('More info'),
            TextButton(
                onPressed: () {
                  Get.to(EditAccountPage(), transition: Transition.rightToLeft);
                },
                child: Text('Edit blockchain account')),
          ],
        ),
      ),
    );
  }
}
