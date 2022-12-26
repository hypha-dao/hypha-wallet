import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ListTile(
          title: Text('Secure your account'),
          trailing: IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {},
          ),
        ),
        ListTile(
          title: Text('App Theme'),
          trailing: IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {},
          ),
        )
      ],
    ));
  }
}
