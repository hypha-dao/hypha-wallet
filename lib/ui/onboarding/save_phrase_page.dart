import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/ui/onboarding/check_phrase_page.dart';

class SavePhrasePage extends StatelessWidget {
  const SavePhrasePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HyphaAppButton(
        onPressed: () {
          Get.to(() => CheckPhrasePage(), transition: Transition.rightToLeft);
        },
        title: 'Next',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Save Phrase'),
            Text('Save Phrase info text'),
            GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2,
              ),
              children: [
                Text('word 1', textAlign: TextAlign.center),
                Text('word 1', textAlign: TextAlign.center),
                Text('word 1', textAlign: TextAlign.center),
                Text('word 1', textAlign: TextAlign.center),
                Text('word 1', textAlign: TextAlign.center),
                Text('word 1', textAlign: TextAlign.center),
                Text('word 1', textAlign: TextAlign.center),
                Text('word 1', textAlign: TextAlign.center),
                Text('word 1', textAlign: TextAlign.center),
                Text('word 1', textAlign: TextAlign.center),
                Text('word 1', textAlign: TextAlign.center),
                Text('word 1', textAlign: TextAlign.center),
              ],
            )
          ],
        ),
      ),
    );
  }
}
