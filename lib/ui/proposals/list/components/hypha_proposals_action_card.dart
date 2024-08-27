import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as Get;
import 'package:hypha_wallet/core/extension/proposal_model_extensions.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/proposals/details/proposal_details_page.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HyphaProposalsActionCard extends StatelessWidget {
  final ProposalModel proposalModel;

  const HyphaProposalsActionCard({required this.proposalModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildVoteStatusOverlay(context),
        HyphaCard(
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              Get.Get.to(
                ProposalDetailsPage(proposalModel),
                transition: Get.Transition.rightToLeft,
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(
                    context,
                    proposalModel.daoName,
                    'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
                  ),
                  const SizedBox(height: 18),
                  const HyphaDivider(),
                  const SizedBox(height: 18),
                  _buildProposalRoleAssignment(
                    context,
                    proposalModel.commitment ?? 0,
                    proposalModel.title ?? 'No title set for this proposal.',
                  ),
                  const SizedBox(height: 20),
                  _buildProposalPercentageIndicator(
                    context,
                    'Unity',
                    proposalModel.unityToPercent(),
                  ),
                  const SizedBox(height: 20),
                  _buildProposalPercentageIndicator(
                    context,
                    'Quorum',
                    proposalModel.quorumToPercent(),
                  ),
                  const SizedBox(height: 20),
                  _buildProposalExpirationInfo(
                    context,
                    proposalModel.formatExpiration(),
                  ),
                  const SizedBox(height: 16),
                  const HyphaDivider(),
                  const SizedBox(height: 16),
                  _buildProposalCardFooter(
                    context,
                    proposalModel.creator,
                    'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildVoteStatusOverlay(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        final myVoteIndex = proposalModel.votes?.indexWhere((element) =>
            element.voter == state.userProfileData?.userNameOrAccount);
        if (myVoteIndex == null || myVoteIndex == -1) return const SizedBox();
        final voteStatus = proposalModel.votes![myVoteIndex].voteStatus;
        final color = voteStatus == VoteStatus.pass
            ? HyphaColors.success
            : voteStatus == VoteStatus.fail
                ? HyphaColors.error
                : HyphaColors.midGrey;
        final statusText = voteStatus == VoteStatus.pass
            ? 'You Voted Yes'
            : voteStatus == VoteStatus.fail
                ? 'You Voted No'
                : 'You chose to abstain';

        return Container(
          padding: const EdgeInsets.only(bottom: 10),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
          ),
          width: double.infinity,
          height: 460,
          child: Text(
            statusText,
            style: context.hyphaTextTheme.smallTitles
                .copyWith(color: HyphaColors.white),
          ),
        );
      },
    );
  }

  Widget _buildHeader(
      BuildContext context, String daoName, String daoImageUrl) {
    return Row(
      children: [
        HyphaAvatarImage(
          imageRadius: 15,
          name: '',
          imageFromUrl: daoImageUrl,
          onTap: () {},
        ),
        const SizedBox(width: 5),
        Expanded(
          child: Text(
            daoName,
            style: context.hyphaTextTheme.ralMediumSmallNote
                .copyWith(color: HyphaColors.white),
            maxLines: 1,
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Text(
            'Marketing Circle',
            style: context.hyphaTextTheme.ralMediumSmallNote
                .copyWith(color: HyphaColors.midGrey),
            maxLines: 1,
          ),
        ),
      ],
    );
  }

  Widget _buildProposalRoleAssignment(
      BuildContext context, int commitment, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _buildProposalInfoText(context, 'Role Assignment'),
            _buildProposalInfoText(context, 'B6'),
            _buildProposalInfoText(context, '$commitment%'),
          ],
        ),
        const SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          height: 55,
          child: Text(
            title,
            style: context.hyphaTextTheme.mediumTitles,
            maxLines: 2,
          ),
        ),
      ],
    );
  }

  Widget _buildProposalInfoText(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        text,
        style: context.hyphaTextTheme.ralMediumSmallNote
            .copyWith(color: HyphaColors.midGrey),
      ),
    );
  }

  Widget _buildProposalPercentageIndicator(
      BuildContext context, String title, double percent) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.hyphaTextTheme.smallTitles,
            ),
            Text(
              '${(percent * 100).toInt()}%',
              style: context.hyphaTextTheme.smallTitles,
            ),
          ],
        ),
        const SizedBox(height: 5),
        LinearPercentIndicator(
          barRadius: const Radius.circular(10),
          padding: EdgeInsets.zero,
          lineHeight: 8,
          percent: percent,
          backgroundColor: HyphaColors.midGrey,
          progressColor: HyphaColors.success,
        ),
      ],
    );
  }

  Widget _buildProposalExpirationInfo(BuildContext context, String expiration) {
    return Row(
      children: [
        const Icon(CupertinoIcons.hourglass,
            color: HyphaColors.midGrey, size: 17),
        const SizedBox(width: 5),
        Expanded(
          child: Text(
            expiration,
            style: context.hyphaTextTheme.ralMediumSmallNote
                .copyWith(color: HyphaColors.midGrey),
            maxLines: 1,
          ),
        ),
      ],
    );
  }

  Widget _buildProposalCardFooter(
      BuildContext context, String creatorName, String creatorImageUrl) {
    return Row(
      children: [
        HyphaAvatarImage(
          imageRadius: 20,
          imageFromUrl: creatorImageUrl,
          onTap: () {},
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            creatorName,
            style: context.hyphaTextTheme.ralMediumSmallNote
                .copyWith(color: HyphaColors.midGrey),
            maxLines: 2,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: context.isDarkTheme
                  ? HyphaColors.midGrey.withOpacity(0.10)
                  : HyphaColors.midGrey.withOpacity(0.05),
            ),
            child: Row(
              children: [
                Text(
                  'Details',
                  style: context.hyphaTextTheme.ralMediumBody.copyWith(
                    color: context.isDarkTheme
                        ? HyphaColors.white
                        : HyphaColors.darkBlack,
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(Icons.arrow_forward_ios, size: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
