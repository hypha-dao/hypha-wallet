import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        child: Text('Create Account'),
      ),
      body: Column(
        children: [
          Icon(Icons.ac_unit),
          Text('Welcome'),
          Text('More Info'),
        ],
      ),
    );
  }
}
