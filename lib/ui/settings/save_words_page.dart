import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/secret_phrase/hypha_secret_phrase.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:share_plus/share_plus.dart';

class SaveWordsPage extends StatelessWidget {
  final List<String> words;
  const SaveWordsPage(this.words, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Save Words')),
      bottomNavigationBar: ElevatedButton(
        onPressed: () => Get.back(),
        child: Text("I've saved my secret words"),
      ),
      body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(height: 16),
              Text('Save your 12 Secret Words'),
              SizedBox(height: 16),
              Text('Write down your secret words in the correct order, on paper.'),
              SizedBox(height: 16),
              HyphaSecretPhrase(words: words.asMap()),
              SizedBox(height: 16),
              TextButton(
                onPressed: () async {
                  await Share.share('words');
                },
                child: Text('Save Secret Words'),
              ),
            ],
          );
        },
      ),
    );
  }
}
