import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';

class CheckPhrasePage extends StatelessWidget {
  const CheckPhrasePage({super.key});

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
            const Text('Secret Phrase Check'),
            const Text('Check Phrase info text'),
            GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2,
              ),
              children: [
                const SecretPhraseWord(selected: false, word: 'Word 1'),
                const SecretPhraseWord(selected: false, word: 'Word 2'),
                const SecretPhraseWord(selected: false, word: 'Word 3'),
                const SecretPhraseWord(selected: false, word: 'Word 4'),
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Center(child: Text(word, textAlign: TextAlign.center)),
    );
  }
}
