import 'package:flutter/material.dart';

class CreateAccountSuccessPage extends StatelessWidget {
  const CreateAccountSuccessPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        child: Text('Done'),
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
