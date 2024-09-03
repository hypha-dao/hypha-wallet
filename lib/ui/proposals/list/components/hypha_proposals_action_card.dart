import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as Get;
import 'package:hypha_wallet/core/extension/proposal_model_extensions.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_admin.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_button.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_expiration_timer.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_header.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_percentage_indicator.dart';
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
            },
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProposalHeader(
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
                  ProposalPercentageIndicator(
                    'Unity',
                    proposalModel.unityToPercent(),
                    HyphaColors.success
                  ),
                  const SizedBox(height: 20),
                  ProposalPercentageIndicator(
                    'Quorum',
                    proposalModel.quorumToPercent(),
                      HyphaColors.success
                  ),
                  const SizedBox(height: 20),
                  ProposalExpirationTimer(
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

  Widget _buildProposalRoleAssignment(BuildContext context, int commitment, String title) {
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
        style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
      ),
    );
  }

  Widget _buildProposalCardFooter(BuildContext context, String adminName, String adminImageUrl) {
    return Row(
      children: [
        Expanded(child: ProposalAdmin(adminName, adminImageUrl)),
        ProposalButton(
            'Details',
            Icons.arrow_forward_ios,
                () {}
        ),
      ],
    );
  }
}
