import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_editable_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/cards/hypha_actionable_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/progress_indicator/hypha_partial_progress_indicator.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/profile/components/crypto_currency_widget.dart';
import 'package:hypha_wallet/ui/profile/components/profile_edit_menu_bottom_sheet.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';
import 'package:hypha_wallet/ui/shared/hypha_error_view.dart';
import 'package:image_cropper/image_cropper.dart';
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
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  actions: [
                    TextButton.icon(
                      label: Text('Edit', style: context.hyphaTextTheme.regular.copyWith(color: Colors.white)),
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          clipBehavior: Clip.hardEdge,
                          context: context,
                          builder: (modelContext) => Wrap(children: [
                            ProfileEditMenuBottomSheet(profileBloc: BlocProvider.of<ProfileBloc>(context))
                          ]),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                          ),
                        );
                      },
                      icon: const Icon(Icons.edit, color: Colors.white, size: 18),
                    )
                  ],
                ),
                extendBodyBehindAppBar: true,
                backgroundColor: HyphaColors.transparent,
                body: Stack(
                  children: [
                    const HyphaHalfBackground(showTopBar: false),
                    ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: [
                        HyphaPartialProgressIndicator(
                          withBackground: false,
                          isLoading: state.showUpdateImageLoading,
                          child: HyphaEditableAvatarImage(
                            imageRadius: 60,
                            name: state.profileData?.name,
                            imageFromUrl: state.profileData?.avatarUrl,
                            onImageRemoved: () {
                              context.read<ProfileBloc>().add(const ProfileEvent.onRemoveImageTapped());
                            },
                            onImageSelected: (image) async {
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
                                (it) => context.read<ProfileBloc>().add(ProfileEvent.setAvatarImage(XFile(it.path))),
                              );
                            },
                          ),
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
                              title: 'About you',
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
}
