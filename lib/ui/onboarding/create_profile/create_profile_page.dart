import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_editable_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/ui/onboarding/components/onboarding_appbar.dart';
import 'package:hypha_wallet/ui/onboarding/create_account/create_account_page.dart';
import 'package:image_picker/image_picker.dart';

class CreateProfilePage extends StatefulWidget {
  const CreateProfilePage({super.key});

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
    return HyphaPageBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const OnboardingAppbar(title: 'Create your', subTitle: 'Hypha Account'),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 80),
                      HyphaEditableAvatarImage(
                        imageRadius: 60,
                        imageFromFile: _file?.path,
                        onImageRemoved: () {
                          setState(() {
                            _file = null;
                          });
                        },
                        onImageSelected: (image) async {
                          setState(() {
                            _file = image;
                          });
                        },
                      ),
                      const SizedBox(height: 80),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Name'),
                        autofocus: true,
                        onSubmitted: (value) {
                          if (value.isNotEmpty) {
                            Get.to(() => CreateAccountPage(_file, _controller.text),
                                transition: Transition.rightToLeft);
                          }
                        },
                        controller: _controller,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ValueListenableBuilder<TextEditingValue>(
              valueListenable: _controller,
              builder: (context, value, child) => SafeArea(
                child: HyphaAppButton(
                  margin: const EdgeInsets.symmetric(horizontal: 45, vertical: 40),
                  isActive: value.text.isNotEmpty,
                  onPressed: value.text.isEmpty
                      ? null
                      : () {
                          Get.to(() => CreateAccountPage(_file, _controller.text), transition: Transition.rightToLeft);
                        },
                  title: 'Next',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
