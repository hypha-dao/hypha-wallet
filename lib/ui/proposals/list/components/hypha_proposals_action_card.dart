import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as Get;
import 'package:hypha_wallet/core/extension/base_proposal_model_extension.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_button.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_creator.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_expiration_timer.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_header.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_percentage_indicator.dart';
import 'package:hypha_wallet/ui/proposals/details/proposal_details_page.dart';

class HyphaProposalsActionCard extends StatelessWidget {
  final ProposalModel _proposalModel;

  const HyphaProposalsActionCard(this._proposalModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildVoteStatusOverlay(context),
        HyphaCard(
          child: Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProposalHeader(_proposalModel.dao),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: HyphaDivider(),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  height: 55,
                  child: Text(
                    _proposalModel.title ?? 'No title',
                    style: context.hyphaTextTheme.mediumTitles,
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ProposalPercentageIndicator(
                    'Unity',
                    _proposalModel.unityToPercent(),
                    _proposalModel.isPassing()
                        ? HyphaColors.success
                        : HyphaColors.error,
                  ),
                ),
                ProposalPercentageIndicator(
                    'Quorum',
                    _proposalModel.quorumToPercent(),
                    _proposalModel.isPassing()
                        ? HyphaColors.success
                        : HyphaColors.error),
                const SizedBox(height: 20),
                ProposalExpirationTimer(_proposalModel.formatExpiration(),),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: HyphaDivider(),
                ),
                _buildProposalCardFooter(
                  context,
                  _proposalModel.creator
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildVoteStatusOverlay(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        final myVoteIndex = _proposalModel.votes?.indexWhere((element) =>
            element.voter == state.userProfileData?.accountName);
        if (myVoteIndex == null || myVoteIndex == -1) return const SizedBox();
        final voteStatus = _proposalModel.votes![myVoteIndex].voteStatus;
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
          height: 435,
          child: Text(
            statusText,
            style: context.hyphaTextTheme.smallTitles
                .copyWith(color: HyphaColors.white),
          ),
        );
      },
    );
  }

  Widget _buildProposalCardFooter(BuildContext context, ProfileData? creator) {
    return Row(
      children: [
        Expanded(child: ProposalCreator(creator)),
        ProposalButton(
            'Details',
            Icons.arrow_forward_ios,
                () {
                  Get.Get.to(
                    ProposalDetailsPage(proposalId: _proposalModel.id,),
                    transition: Get.Transition.rightToLeft,
                  );
                }
        ),
      ],
    );
  }
}
