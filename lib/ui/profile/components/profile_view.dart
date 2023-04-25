import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_editable_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/cards/hypha_actionable_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/progress_indicator/hypha_partial_progress_indicator.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/profile/components/crypto_currency_widget.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';
import 'package:hypha_wallet/ui/shared/hypha_error_view.dart';
import 'package:hypha_wallet/ui/shared/ui_constants.dart';

class ProfileView extends StatelessWidget {
  final bool kDebugProfileService = false; // Debug code until we have wired up ppp service.
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
                        HyphaPartialProgressIndicator(
                          withBackground: false,
                          isLoading: state.showUpdateImageLoading,
                          child: HyphaEditableAvatarImage(
                            imageRadius: 50,
                            name: state.profileData?.name,
                            imageFromUrl: state.profileData?.getAvatarUrl(),
                            onImageRemoved: () {
                              context.read<ProfileBloc>().add(const ProfileEvent.onRemoveImageTapped());
                            },
                            onImageSelected: (image) async =>
                                context.read<ProfileBloc>().add(ProfileEvent.setAvatarImage(image)),
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
                              trailer: const Icon(Icons.edit),
                              onTap: () async {
                                // ignore: unawaited_futures
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  clipBehavior: Clip.hardEdge,
                                  context: context,
                                  builder: (modelContext) => FractionallySizedBox(
                                    heightFactor: UIConstants.bottomSheetHeightFraction,
                                    child: EditBioBottomSheet(profileBloc: BlocProvider.of<ProfileBloc>(context)),
                                  ),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                                  ),
                                );
                              },
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

class EditBioBottomSheet extends StatefulWidget {
  final ProfileBloc profileBloc;

  const EditBioBottomSheet({super.key, required this.profileBloc});

  @override
  State<EditBioBottomSheet> createState() => _EditBioBottomSheetState();
}

class _EditBioBottomSheetState extends State<EditBioBottomSheet> {
  final TextEditingController _controller = TextEditingController();
  bool showUpdateBioLoading = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller.text = widget.profileBloc.state.profileData?.bio ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back(result: null);
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Text(
              'Enter Bio',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Bio',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
              maxLines: 5,
              autofocus: true,
              controller: _controller,
            ),
            const SizedBox(height: 50),
            HyphaAppButton(
              title: 'submit',
              isLoading: showUpdateBioLoading,
              onPressed: () {
                setState(() {
                  showUpdateBioLoading = true;
                });
                widget.profileBloc.add(ProfileEvent.setBio(_controller.text));
              },
            ),
          ],
        ),
      ),
    );
  }
}
