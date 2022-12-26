import 'package:flutter/material.dart';

class AccountSecurityPage extends StatelessWidget {
  const AccountSecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ListTile(
          title: Text('Save your 12 secret words'),
          trailing: IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              // Get.to(AccountSecurityPage());
            },
          ),
        ),
        ListTile(
          title: Text('Save your private key'),
          trailing: IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              // Get.to(AccountSecurityPage());
            },
          ),
        ),
      ],
    ));
  }
}
