import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/secret_phrase/hypha_secret_phrase.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:share_plus/share_plus.dart';

class SaveWordsPage extends StatelessWidget {
  final List<String> words;

  const SaveWordsPage(this.words, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: HyphaColors.gradientBlack),
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        appBar: AppBar(title: Text('12 Words')),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 22, right: 22, bottom: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              HyphaAppButton(
                onPressed: () async {
                  await Share.share(words.toString());
                },
                title: 'COPY 12 WORDS',
                buttonType: ButtonType.secondary,
              ),
              SizedBox(height: 12),
              HyphaAppButton(
                onPressed: () => Get.back(),
                title: 'DONE',
              ),
            ],
          ),
        ),
        body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            return ListView(
              padding: EdgeInsets.all(22),
              children: [
                Text(
                  'Write down your secret words in the correct order, on paper.',
                  textAlign: TextAlign.center,
                  style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.primaryBlu),
                ),
                SizedBox(height: 16),
                HyphaSecretPhrase(words: words.asMap()),
                SizedBox(height: 16),
              ],
            );
          },
        ),
      ),
    );
  }
}
