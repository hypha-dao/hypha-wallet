import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_editable_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/cards/hypha_actionable_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/profile/components/crypto_currency_widget.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';
import 'package:hypha_wallet/ui/shared/hypha_error_view.dart';
import 'package:image_picker/image_picker.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<ProfileBloc>().add(const ProfileEvent.onRefresh());
            },
            child: HyphaBodyWidget(
              pageState: state.pageState,
              failure: (_) {
                return HyphaErrorWidget(onRefreshPressed: () {
                  context.read<ProfileBloc>().add(const ProfileEvent.onRefresh());
                });
              },
              success: (value) => Scaffold(
                backgroundColor: HyphaColors.transparent,
                body: Stack(
                  children: [
                    const HyphaHalfBackground(showTopBar: false),
                    ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: [
                        const SizedBox(height: 80),
                        // Center(
                        //   child: HyphaAvatarImage(
                        //     imageRadius: 50,
                        //     name: state.profileData?.name,
                        //     imageFromUrl: state.profileData?.image,
                        //   ),
                        // ),
                        HyphaEditableAvatarImage(
                          imageRadius: 50,
                          name: state.profileData?.name,
                          imageFromUrl: state.profileData?.getAvatarUrl(),
                          onImageRemoved: () {
                            onImageRemoved();
                          },
                          onImageSelected: (image) async {
                            onImageSelected(image);
                          },
                        ),
                        const SizedBox(height: 14),
                        Center(
                          child: Text(state.profileData?.name ?? '', style: context.hyphaTextTheme.mediumTitles),
                        ),
                        const SizedBox(height: 4),
                        Center(
                          child: Text(
                            '@${state.profileData?.account ?? ''}',
                            style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.lightBlue),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: HyphaActionableCard(
                              trailer: const Icon(Icons.edit),
                              onTap: () async {
                                print('EDIT Tapped');
                              },
                              title: 'Bio',
                              subtitle: state.profileData?.bio ?? '',
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        if (state.profileData?.eosData != null)
                          CryptoCurrencyWidget(
                            imageUrl: state.profileData!.eosData!.imageUrl,
                            name: state.profileData!.eosData!.cryptoName,
                            address: state.profileData!.eosData!.accountAddress,
                            subAddress: state.profileData!.eosData!.accountName,
                            selected: state.profileData!.eosData!.isSelected,
                            onTap: () {},
                            onChanged: (value) {},
                          ),
                        if (state.profileData?.bitCoinData != null) ...[
                          const SizedBox(height: 16),
                          CryptoCurrencyWidget(
                            imageUrl: state.profileData!.bitCoinData!.imageUrl,
                            name: state.profileData!.bitCoinData!.cryptoName,
                            address: state.profileData!.bitCoinData!.accountAddress,
                            subAddress: state.profileData!.bitCoinData!.accountName,
                            selected: state.profileData!.bitCoinData!.isSelected,
                            onTap: () {},
                            onChanged: (value) {},
                          ),
                        ],
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
                          title: 'Login',
                          buttonType: ButtonType.primary,
                        ),
                        const SizedBox(height: 5),
                        HyphaAppButton(
                          margin: const EdgeInsets.symmetric(horizontal: 24),
                          onPressed: () {
                            print('Set Profile Name button pressed');
                            try {
                              context.read<ProfileBloc>().add(const ProfileEvent.setName('Nikolaus H'));
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
                              context
                                  .read<ProfileBloc>()
                                  .add(const ProfileEvent.setBio('Hypha DAO & Hypha Wallet Tech Lead.'));
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
                              context.read<ProfileBloc>().add(ProfileEvent.setAvatarImage(it));
                            });
                          },
                          title: 'Pick image',
                          buttonType: ButtonType.primary,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<bool> onImageRemoved() async {
    print('on image removed');
    return true;
  }

  Future<bool> onImageSelected(XFile image) async {
    print('on image selected');
    return true;
  }
}
