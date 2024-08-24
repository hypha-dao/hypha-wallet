import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/proposals/components/hypha_proposals_action_card.dart';

class ProposalsView extends StatelessWidget {
  const ProposalsView({super.key});
  @override
  Widget build(BuildContext context) {
    final List<ProposalModel> proposals = [
      ProposalModel(
        id: '1',
        daoName: 'EcoDAO',
        daoImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        commitment: 80,
        title: 'Reduce Carbon Footprint',
        unity: 85,
        quorum: 60,
        expiration: DateTime.parse('2024-09-30T12:00:00Z'),
        creator: 'John Doe',
        creatorImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        voted: true,
        votes: [],
      ),
      ProposalModel(
        id: '2',
        daoName: 'HealthDAO',
        daoImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        commitment: 50,
        title: 'Community Health Initiative',
        unity: 75,
        quorum: 55,
        expiration: DateTime.parse('2024-10-15T18:00:00Z'),
        creator: 'Jane Smith',
        creatorImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        voted: false,
        votes: [],
      ),
      ProposalModel(
        id: '3',
        daoName: 'TechDAO',
        daoImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        commitment: 95,
        title: 'Develop Open-Source Software',
        unity: 90,
        quorum: 70,
        expiration: DateTime.parse('2024-11-01T09:00:00Z'),
        creator: 'Alice Johnson',
        creatorImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        voted: true,
        votes: [],
      ),
      ProposalModel(
        id: '4',
        daoName: 'GreenDAO',
        daoImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        commitment: 60,
        title: 'Sustainable Agriculture',
        unity: 65,
        quorum: 50,
        expiration: DateTime.parse('2024-12-05T14:00:00Z'),
        creator: 'Bob Brown',
        creatorImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        voted: false,
        votes: [],
      ),
      ProposalModel(
        id: '5',
        daoName: 'ArtDAO',
        daoImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        commitment: 70,
        title: 'Promote Digital Art',
        unity: 80,
        quorum: 65,
        expiration: DateTime.parse('2024-08-28T11:00:00Z'),
        creator: 'Charlie Davis',
        creatorImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        voted: true,
        votes: [],
      ),
      ProposalModel(
        id: '6',
        daoName: 'EduDAO',
        daoImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        commitment: 85,
        title: 'Online Education Platform',
        unity: 92,
        quorum: 75,
        expiration: DateTime.parse('2024-09-12T16:00:00Z'),
        creator: 'Diana Evans',
        creatorImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        voted: false,
        votes: [],
      ),
      ProposalModel(
        id: '7',
        daoName: 'FinanceDAO',
        daoImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        commitment: 90,
        title: 'Decentralized Finance Initiative',
        unity: 88,
        quorum: 80,
        expiration: DateTime.parse('2024-10-02T20:00:00Z'),
        creator: 'Edward Franklin',
        creatorImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        voted: true,
        votes: [],
      ),
      ProposalModel(
        id: '8',
        daoName: 'MusicDAO',
        daoImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        commitment: 75,
        title: 'Support Independent Musicians',
        unity: 70,
        quorum: 60,
        expiration: DateTime.parse('2024-11-18T10:00:00Z'),
        creator: 'Fiona Green',
        creatorImageUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
        voted: false,
        votes: [],
      ),
    ];


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
          body: Container(
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: context.isDarkMode ? null : HyphaColors.offWhite,
              gradient: context.isDarkMode ? HyphaColors.gradientBlack : null,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
              boxShadow: context.isDarkMode
                  ? HyphaColors.darkModeCardShadow
                  : HyphaColors.lightModeCardShadow,
            ),
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${proposals.length} Active Proposals',style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey ),),
                  const SizedBox(height: 20,),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (BuildContext context,int index) =>  HyphaProposalsActionCard(proposalModel: proposals[index],),
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(height: 16);
                        },
                        itemCount: proposals.length),
                  ),
                ],
              ),
            ),
          ),
        ));


  }
}

class _NewProposalButton extends StatelessWidget {
  const _NewProposalButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'New Proposal',
          style: context.hyphaTextTheme.regular.copyWith(color: Colors.white, fontSize: 12),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: context.isDarkMode ? HyphaColors.darkBlack : HyphaColors.offWhite,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.add_outlined, size: 25, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

