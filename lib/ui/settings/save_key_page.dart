import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:share_plus/share_plus.dart';

class SaveKeyPage extends StatelessWidget {
  final String privateKey;

  const SaveKeyPage(this.privateKey, {super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        appBar: AppBar(title: const Text('Private Key')),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 22, right: 22, bottom: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              HyphaAppButton(
                onPressed: () async {
                  await Share.share(privateKey);
                },
                title: 'COPY PRIVATE KEY',
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
        body: ListView(
          padding: const EdgeInsets.only(left: 45, right: 45),
          children: [
            const SizedBox(height: 16),
            Text(
              'Save your private key somewhere safe, never share it with anyone.',
              style: context.hyphaTextTheme.regular.copyWith(
                color: HyphaColors.primaryBlu,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 116),
            TextFormField(
              key: Key(privateKey),
              autofocus: false,
              enabled: false,
              onTap: () async {
                await Share.share(privateKey);
              },
              initialValue: privateKey,
              decoration: InputDecoration(
                labelText: 'Private Key',
                labelStyle: context.textTheme.labelLarge?.copyWith(color: HyphaColors.primaryBlu),
                disabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: HyphaColors.primaryBlu)),
                enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: HyphaColors.primaryBlu)),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
