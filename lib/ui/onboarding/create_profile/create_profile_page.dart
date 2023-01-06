import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/ui/onboarding/components/onboarding_appbar.dart';
import 'package:hypha_wallet/ui/onboarding/create_account/create_account_page.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page_background.dart';
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
    return OnboardingPageBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: ValueListenableBuilder<TextEditingValue>(
          valueListenable: _controller,
          builder: (context, value, child) => SafeArea(
            child: HyphaAppButton(
              margin: EdgeInsets.symmetric(horizontal: 45, vertical: 40),
              onPressed: value.text.isEmpty
                  ? null
                  : () {
                      Get.to(() => CreateAccountPage(_file, _controller.text), transition: Transition.rightToLeft);
                    },
              title: 'NEXT',
            ),
          ),
        ),
        appBar: OnboardingAppbar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Stack(
                alignment: Alignment.center,
                children: [
                  HyphaAvatarImage(
                      imageRadius: 36,
                      imageFromFile: _file?.path,
                      onTap: () async {
                        final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
                        setState(() {
                          _file = image;
                        });
                      }),
                  Positioned(
                    top: -4,
                    right: -4,
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
              SizedBox(height: 80),
              TextField(
                decoration: InputDecoration(labelText: 'Name'),
                autofocus: true,
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    Get.to(() => CreateAccountPage(_file, _controller.text), transition: Transition.rightToLeft);
                  }
                },
                controller: _controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
