import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/ui/profile/components/edit_name_bottom_sheet.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_bloc.dart';
import 'package:hypha_wallet/ui/shared/components/text_request_bottom_sheet.dart';
import 'package:hypha_wallet/ui/shared/ui_constants.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ProfileEditMenuBottomSheet extends StatelessWidget {
  final ProfileBloc profileBloc;

  const ProfileEditMenuBottomSheet({super.key, required this.profileBloc});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            ListTile(
              title: const Text('Edit Name'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  clipBehavior: Clip.hardEdge,
                  context: context,
                  builder: (modelContext) => FractionallySizedBox(
                    heightFactor: UIConstants.bottomSheetHeightFraction,
                    child: EditNameBottomSheet(profileBloc: profileBloc),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Edit about you'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  clipBehavior: Clip.hardEdge,
                  context: context,
                  builder: (modelContext) => FractionallySizedBox(
                    heightFactor: UIConstants.bottomSheetHeightFraction,
                    child: TextRequestBottomSheet(
                        title: 'Enter Bio',
                        initialText: profileBloc.state.profileData?.bio ?? '',
                        onPressed: (String? text) {
                          text?.let((it) => profileBloc.add(ProfileEvent.setBio(it)));
                        }),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(profileBloc.state.profileData?.avatarUrl != null ? 'Change Picture' : 'Add Picture'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {
                Navigator.of(context).pop();

                final XFile? image = await ImagePicker().pickImage(
                  source: ImageSource.gallery,
                  imageQuality: 0,
                  maxHeight: 1500,
                  maxWidth: 1500,
                );

                if(image == null) return;

                final CroppedFile? croppedFile = await ImageCropper().cropImage(
                  sourcePath: image.path,
                  aspectRatioPresets: [
                    CropAspectRatioPreset.square,
                  ],
                  uiSettings: [
                    AndroidUiSettings(
                      toolbarTitle: 'Crop Image',
                      toolbarColor: HyphaColors.primaryBlu,
                      toolbarWidgetColor: Colors.white,
                      initAspectRatio: CropAspectRatioPreset.original,
                      lockAspectRatio: false,
                    ),
                    IOSUiSettings(title: 'Crop Image'),
                  ],
                );

                /// Send event with image after cropping it.
                croppedFile?.let(
                  (it) => profileBloc.add(ProfileEvent.setAvatarImage(XFile(it.path))),
                );
              },
            ),

            if(profileBloc.state.profileData?.avatarUrl != null)...[
              ListTile(
                title: const Text('Remove Picture'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.of(context).pop();
                  profileBloc.add(const ProfileEvent.onRemoveImageTapped());
                },
              ),
            ]
          ],
        ),
      ),
    );
  }
}
