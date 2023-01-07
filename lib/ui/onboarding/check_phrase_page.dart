import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';

class CheckPhrasePage extends StatelessWidget {
  const CheckPhrasePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HyphaAppButton(
        onPressed: () {
          // Get.to(() => CreateAccountSuccessPage(), transition: Transition.rightToLeft);
        },
        title: 'Next',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Secret Phrase Check'),
            Text('Check Phrase info text'),
            GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2,
              ),
              children: [
                SecretPhraseWord(selected: false, word: 'Word 1'),
                SecretPhraseWord(selected: false, word: 'Word 2'),
                SecretPhraseWord(selected: false, word: 'Word 3'),
                SecretPhraseWord(selected: false, word: 'Word 4'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SecretPhraseWord extends StatelessWidget {
  final bool selected;
  final String word;

  const SecretPhraseWord({
    required this.selected,
    required this.word,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Center(child: Text(word, textAlign: TextAlign.center)),
    );
  }
}
