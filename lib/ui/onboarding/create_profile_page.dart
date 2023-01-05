import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/graphics/bg_texture.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: ValueListenableBuilder<TextEditingValue>(
          valueListenable: _controller,
          builder: (context, value, child) => HyphaAppButton(
            onPressed: value.text.isEmpty
                ? null
                : () {
                    Get.to(() => CreateAccountPage(_file, _controller.text), transition: Transition.rightToLeft);
                  },
            title: 'Next',
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: HyphaColors.transparent,
          title: Column(
            children: [
              Text('Create your'),
              Text('Hypha Account'),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            Stack(
              alignment: Alignment.center,
              children: [
                HyphaAvatarImage(
                    imageRadius: 30,
                    imageFromFile: _file?.path,
                    onTap: () async {
                      final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
                      setState(() {
                        _file = image;
                      });
                    }),
                Positioned(
                  top: -8,
                  right: -8,
                  child: IconButton(
                      onPressed: () async {
                        if (_file != null) {
                          setState(() {
                            _file = null;
                          });
                        } else {
                          final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
                          setState(() {
                            _file = image;
                          });
                        }
                      },
                      icon: Icon(_file == null ? Icons.add_circle : Icons.remove_circle)),
                )
              ],
            ),
            SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                hintText: 'Name',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: HyphaColors.white,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: HyphaColors.white,
                  ),
                ),
              ),
              controller: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
