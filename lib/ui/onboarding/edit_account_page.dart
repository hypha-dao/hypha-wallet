import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/ui/onboarding/save_phrase_page.dart';

class EditAccountPage extends StatelessWidget {
  const EditAccountPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Get.to(SavePhrasePage(), transition: Transition.rightToLeft);
        },
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
              decoration: InputDecoration(hintText: 'Blockchain Account'),
            ),
            RadioListTile(
                title: Text('Only standard characters'), value: true, groupValue: true, onChanged: (value) {}),
            RadioListTile(
                title: Text('Only standard characters'), value: true, groupValue: true, onChanged: (value) {}),
            RadioListTile(
                title: Text('Only standard characters'), value: true, groupValue: true, onChanged: (value) {}),
            RadioListTile(
                title: Text('Only standard characters'), value: true, groupValue: true, onChanged: (value) {}),
            RadioListTile(
                title: Text('Only standard characters'), value: true, groupValue: true, onChanged: (value) {}),
            RadioListTile(
                title: Text('Only standard characters'), value: true, groupValue: true, onChanged: (value) {}),
          ],
        ),
      ),
    );
  }
}
