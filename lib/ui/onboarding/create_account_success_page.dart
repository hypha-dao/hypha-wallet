import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';

class CreateAccountSuccessPage extends StatelessWidget {
  const CreateAccountSuccessPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HyphaAppButton(
        onPressed: () {},
        title: 'Done',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Create Account Success'),
            Icon(Icons.image),
            Text('Gery G'),
            Text('@geryG'),
            Text('Bio'),
            Text('Bio more info '),
          ],
        ),
      ),
    );
  }
}
