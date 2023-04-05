import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/settings/words_info_page.dart';
import 'package:hypha_wallet/ui/shared/ui_constants.dart';
import 'package:share_plus/share_plus.dart';

class SaveWordsPage extends StatelessWidget {
  final List<String> words;

  const SaveWordsPage(this.words, {super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        appBar: AppBar(
          title: const Text('12 Words'),
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    builder: (context) => const FractionallySizedBox(
                      heightFactor: UIConstants.bottomSheetHeightFraction,
                      child: WordsInfoPage(),
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                  );
                },
                icon: const Icon(Icons.info_outline))
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 45, right: 45, bottom: 24),
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
              const SizedBox(height: 12),
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
              padding: const EdgeInsets.all(22),
              children: [
                Text(
                  'Write down your 12 secret words in the correct order',
                  textAlign: TextAlign.center,
                  style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.primaryBlu),
                ),
                const SizedBox(height: 24),
                Wrap(
                  children: words.mapIndexed((index, word) {
                    return Card(
                      margin: const EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: context.isDarkTheme ? HyphaColors.lightBlack : HyphaColors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 7, bottom: 7),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              (index + 1).toString(),
                              style: context.hyphaTextTheme.regular.copyWith(
                                color: HyphaColors.primaryBlu,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '  $word',
                              style: context.hyphaTextTheme.regular,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16),
              ],
            );
          },
        ),
      ),
    );
  }
}
