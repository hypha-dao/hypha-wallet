import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as GetX;
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/profile/profile_page.dart';
import 'package:hypha_wallet/ui/proposals/filter/filter_proposals_page.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/filter_status.dart';
import 'package:hypha_wallet/ui/proposals/list/components/hypha_proposal_history_card.dart';
import 'package:hypha_wallet/ui/proposals/list/components/hypha_proposals_action_card.dart';
import 'package:hypha_wallet/ui/proposals/list/interactor/proposals_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';

class ProposalsView extends StatelessWidget {
  const ProposalsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProposalsBloc, ProposalsState>(
        builder: (context, state) {
      return HyphaPageBackground(
          backgroundTexture: 'assets/images/graphics/wallet_background.png',
          withOpacity: false,
          child: Scaffold(
            backgroundColor: HyphaColors.transparent,
            appBar: AppBar(
              scrolledUnderElevation: 0,
              backgroundColor: Colors.transparent,
              actions: [
                const _NewProposalButton(),
                const SizedBox(
                  width: 20,
                )
              ],
              title: Row(
                children: [
                  BlocBuilder<AuthenticationBloc, AuthenticationState>(
                    builder: (context, state) {
                      return HyphaAvatarImage(
                        onTap: () {
                          GetX.Get.to(
                            const ProfilePage(),
                            transition: GetX.Transition.leftToRight,
                          );
                        },
                        imageRadius: 19,
                        imageFromUrl: state.userProfileData?.userImage,
                        name: state.userProfileData?.userName,
                      );
                    },
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Proposals',
                    style: context.hyphaTextTheme.bigTitles
                        .copyWith(color: HyphaColors.white),
                  ),
                ],
              ),
              titleSpacing: 20,
            ),
            body: RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<ProposalsBloc>()
                      .add(const ProposalsEvent.initial(refresh: true));
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: context.isDarkMode ? null : HyphaColors.offWhite,
                    gradient:
                        context.isDarkMode ? HyphaColors.gradientBlack : null,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                    boxShadow: context.isDarkMode
                        ? HyphaColors.darkModeCardShadow
                        : HyphaColors.lightModeCardShadow,
                  ),
                  child: HyphaBodyWidget(
                    pageState: state.pageState,
                    success: (context) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 22,
                          ),
                          Text(
                            '${state.proposals.length} ${context.read<ProposalsBloc>().filterStatus.string} Proposal${state.proposals.length == 1 ? '' : 's'}',
                            style: context.hyphaTextTheme.ralMediumBody
                                .copyWith(color: HyphaColors.midGrey),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListView.separated(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      padding:
                                          const EdgeInsets.only(bottom: 22),
                                      itemBuilder:
                                          (BuildContext context, int index) =>
                                              HyphaProposalsActionCard(
                                                  state.proposals[index]),
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return const SizedBox(height: 16);
                                      },
                                      itemCount: state.proposals.length),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    'See Proposals History',
                                    style: context.hyphaTextTheme.ralMediumBody
                                        .copyWith(color: HyphaColors.midGrey),
                                  ),
                                  ...List.generate(
                                    2,
                                    (index) {
                                      return Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: const HyphaProposalHistoryCard(
                                            dao: DaoData(
                                                docId: 67176,
                                                detailsDaoName: 't4rcvben2fe4',
                                                settingsDaoTitle:
                                                    'Think-it Collective',
                                                logoIPFSHash:
                                                    'QmVB8q28U1bjfi51reQMaU7XwP4FThWj39DrU5G8MriMS9',
                                                logoType: 'png',
                                                settingsDaoUrl:
                                                    'think-it-collective'),
                                            subTitle: '1,234 Past Proposals',
                                          ));
                                    },
                                  ),
                                  const SizedBox(
                                    height: 90,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            floatingActionButton: IconButton(
                onPressed: () {
                  GetX.Get.to(() => const FilterProposalsPage(),
                      transition: GetX.Transition.leftToRight);
                },
                icon: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                        'assets/images/graphics/wallet_background.png'),
                    child: Icon(Icons.filter_alt_outlined,
                        color: HyphaColors.white))),
          ));
    });
  }
}

class _NewProposalButton extends StatelessWidget {
  const _NewProposalButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'New Proposal',
          style: context.hyphaTextTheme.regular
              .copyWith(color: Colors.white, fontSize: 12),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: context.isDarkMode
                  ? HyphaColors.darkBlack
                  : HyphaColors.offWhite,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.add_outlined,
                size: 25,
                color: context.isDarkMode
                    ? HyphaColors.white
                    : HyphaColors.darkBlack),
          ),
        ),
      ],
    );
  }
}
