import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/ui/profile/components/edit_name_bottom_sheet.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_bloc.dart';
import 'package:hypha_wallet/ui/shared/components/text_request_bottom_sheet.dart';
import 'package:hypha_wallet/ui/shared/ui_constants.dart';

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
                    child: EditBioBottomSheet(
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
          ],
        ),
      ),
    );
  }
}
