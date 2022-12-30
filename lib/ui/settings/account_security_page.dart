import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/ui/settings/save_key_page.dart';
import 'package:hypha_wallet/ui/settings/save_words_page.dart';

class AccountSecurityPage extends StatelessWidget {
  const AccountSecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Security')),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Get.to(() => SaveWordsPage());
            },
            title: Text('Save your 12 secret words'),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            onTap: () {
              Get.to(() => SaveKeyPage());
            },
            title: Text('Save your private key'),
            trailing: Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
