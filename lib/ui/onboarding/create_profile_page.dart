import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/ui/onboarding/create_account/create_account_page.dart';
import 'package:image_picker/image_picker.dart';

class CreateProfilePage extends StatefulWidget {
  const CreateProfilePage();

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
  XFile? _file;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Get.to(() => CreateAccountPage(_file, _controller.text), transition: Transition.rightToLeft);
        },
        child: Text('Next'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Create Account'),
            IconButton(
                onPressed: () async {
                  final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
                  setState(() {
                    _file = image;
                  });
                },
                icon: Icon(Icons.add_photo_alternate_outlined)),
            TextField(decoration: InputDecoration(hintText: 'Name'), controller: _controller),
          ],
        ),
      ),
    );
  }
}
