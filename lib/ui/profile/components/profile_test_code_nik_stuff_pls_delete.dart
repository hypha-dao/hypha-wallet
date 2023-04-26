import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/core/network/repository/profile_repository.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_bloc.dart';
import 'package:image_picker/image_picker.dart';

testCode(state, profileBloc) => [
      HyphaAppButton(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        onPressed: () async {
          print('Login');
          final as = GetIt.I.get<AmplifyService>();
          if (as.isConnected()) {
            print('Already logged in');
          }
          if (state.profileData != null) {
            final success = await as.loginUser(state.profileData!.account);
            if (success) {
              // ignore: unused_local_variable
              final res = await as.getAuthUserAttributes();

              // ignore: unused_local_variable
              final profileRes = await as.getProfile();
            }
            print('login success: $success');
          }
        },
        title: 'Sign up',
        buttonType: ButtonType.primary,
      ),
      const SizedBox(height: 5),
      HyphaAppButton(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        onPressed: () async {
          print('Login');
          final as = GetIt.I.get<AmplifyService>();
          if (as.isConnected()) {
            print('Already logged in');
          }
          if (state.profileData != null) {
            final success = await as.loginUser(state.profileData!.account);
            print('login res: $success');
            if (success) {
              // ignore: unused_local_variable
              final res = await as.getAuthUserAttributes();
              if (res != null) {
                for (final attribute in res) {
                  print('attribute: ${attribute.name}: ${attribute.value}');
                }
              } else {
                print('no user attributes.');
              }

              // ignore: unused_local_variable
              final profileRes = await as.getProfile();
              // ignore: unused_local_variable
              final profileService = GetIt.I.get<ProfileService>();

              print('avatar: ${profileRes.avatar}');
              if (profileRes.avatar != null) {
                final creds = await as.getCredentials();
                if (profileRes.s3Identity == null) {
                  print('init profile');
                  final registerRes = await as.initializeProfile(
                      name: profileRes.name!, s3Identity: creds.userIdentityId!, avatar: profileRes.avatar);

                  print('register result: $registerRes');
                }

                // init test

                // print("user identity: ${creds.userIdentityId}");

                // final url =
                //     await profileService.getImageUrl(profileRes.avatar!, creds.userIdentityId!);

                // Logger().d("url: $url");
              }
            }
            print('login success: $success');
          }
        },
        title: 'Login & Initialize',
        buttonType: ButtonType.primary,
      ),
      const SizedBox(height: 5),
      HyphaAppButton(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        onPressed: () {
          print('Set Profile Name button pressed');
          try {
            profileBloc.add(const ProfileEvent.setName('Tester 001'));
          } catch (error) {
            print('error $error');
          }
        },
        title: 'Set Profile Name',
        buttonType: ButtonType.primary,
      ),
      const SizedBox(height: 5),
      HyphaAppButton(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        onPressed: () {
          print('setBio button pressed');
          try {
            profileBloc.add(const ProfileEvent.setBio('Hypha DAO & Hypha Wallet Tech Lead.'));
          } catch (error) {
            print('error - $error');
          }
        },
        title: 'Set Bio',
        buttonType: ButtonType.primary,
      ),
      const SizedBox(height: 5),
      HyphaAppButton(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        onPressed: () async {
          print('pick image');
          final XFile? image = await ImagePicker().pickImage(
            source: ImageSource.gallery,
            imageQuality: 0,
            maxHeight: 2000,
            maxWidth: 2000,
          );
          image?.let((it) {
            profileBloc.add(ProfileEvent.setAvatarImage(it));
          });
        },
        title: 'Pick image',
        buttonType: ButtonType.primary,
      ),
    ];
