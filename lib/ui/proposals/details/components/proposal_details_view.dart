import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/core/extension/base_proposal_model_extension.dart';
import 'package:hypha_wallet/core/network/models/proposal_details_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_button.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_creator.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_expiration_timer.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_header.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_percentage_indicator.dart';
import 'package:hypha_wallet/ui/proposals/details/components/proposal_voters.dart';
import 'package:hypha_wallet/ui/proposals/details/interactor/proposal_detail_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';

class ProposalDetailsView extends StatefulWidget {
  const ProposalDetailsView({super.key});

  @override
  State<ProposalDetailsView> createState() => _ProposalDetailsViewState();
}

class _ProposalDetailsViewState extends State<ProposalDetailsView> {
  final ValueNotifier<bool> _isOverflowingNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isExpandedNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<String?> _detailsNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<bool> _changeVoteNotifier = ValueNotifier<bool>(false);

  void _checkIfTextIsOverflowing() {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: _detailsNotifier.value),
      maxLines: 3,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: context.size!.width);

    if (textPainter.didExceedMaxLines) {
      _isOverflowingNotifier.value = true;
    }
  }

  VoteModel? _userVote(BuildContext context, List<VoteModel>? voters) {
    final userProfileData =
        context.read<AuthenticationBloc>().state.userProfileData;
    final myVoteIndex = voters?.indexWhere(
        (element) => element.voter == userProfileData?.accountName);
    if (myVoteIndex == null || myVoteIndex == -1 || voters == null) return null;
    return voters[myVoteIndex];
  }

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          title: const Text('Proposal Details'),
        ),
        body: BlocBuilder<ProposalDetailBloc, ProposalDetailState>(
          builder: (context, state) {
            return HyphaBodyWidget(
                pageState: state.pageState,
                success: (context) {
                  final VoteModel? userVote = _userVote(context, state.proposalDetailsModel!.votes);
                  final ProposalDetailsModel _proposalDetailsModel = state.proposalDetailsModel!;
                  final List<VoteModel> passVoters = _proposalDetailsModel.fetchVotersByStatus(VoteStatus.pass);
                  final List<VoteModel> failVoters = _proposalDetailsModel.fetchVotersByStatus(VoteStatus.fail);
                  _detailsNotifier.value = _proposalDetailsModel.description;

                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    _checkIfTextIsOverflowing();
                  });

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ListView(
                      children: [
                        const SizedBox(height: 20),

                        /// Header
                        ProposalHeader(_proposalDetailsModel.dao),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: HyphaDivider(),
                        ),

                        /// Main Section
                        ProposalCreator(_proposalDetailsModel.creator, isColumn: false),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            'Proposal Title',
                            style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
                          ),
                        ),
                        Text(
                          _proposalDetailsModel.title ?? 'No title',
                          style: context.hyphaTextTheme.mediumTitles,
                        ),
                        const SizedBox(height: 30),

                        /// Details Section
                        if (_proposalDetailsModel.description != null) ...[
                          Text(
                            'Proposal Details',
                            style: context.hyphaTextTheme.ralMediumSmallNote
                                .copyWith(color: HyphaColors.midGrey),
                          ),
                          ValueListenableBuilder<bool>(
                            valueListenable: _isExpandedNotifier,
                            builder: (context, isExpanded, child) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      _proposalDetailsModel.description ?? '',
                                      style:
                                          context.hyphaTextTheme.ralMediumBody,
                                      maxLines: isExpanded ? null : 3,
                                      overflow: isExpanded
                                          ? TextOverflow.visible
                                          : TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    child: Row(
                                      children: [
                                        const Expanded(child: HyphaDivider()),
                                        ValueListenableBuilder<bool>(
                                          valueListenable:
                                              _isOverflowingNotifier,
                                          builder:
                                              (context, isOverflowing, child) {
                                            return isOverflowing
                                                ? ProposalButton(
                                                    isExpanded
                                                        ? 'Collapse'
                                                        : 'Expand',
                                                    isExpanded
                                                        ? Icons
                                                            .keyboard_arrow_up_outlined
                                                        : Icons
                                                            .keyboard_arrow_down_outlined,
                                                    () => _isExpandedNotifier
                                                        .value = !isExpanded,
                                                  )
                                                : const SizedBox.shrink();
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ],

                        /// Voting Scores Section
                        Text(
                          'Voting Scores',
                          style: context.hyphaTextTheme.ralMediumSmallNote
                              .copyWith(color: HyphaColors.midGrey),
                        ),
                        if (passVoters.isNotEmpty) ...[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              '${passVoters.length} members voted Yes',
                              style: context.hyphaTextTheme.reducedTitles,
                            ),
                          ),
                          ProposalVoters(passVoters)
                        ],
                        if (failVoters.isNotEmpty) ...[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              '${failVoters.length} members voted No',
                              style: context.hyphaTextTheme.reducedTitles,
                            ),
                          ),
                          ProposalVoters(failVoters)
                        ],
                        const SizedBox(height: 20),
                        ...List.generate(
                          2,
                          (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: ProposalPercentageIndicator(
                                index == 0 ? 'Unity' : 'Quorum',
                                index == 0
                                    ? _proposalDetailsModel.unityToPercent()
                                    : _proposalDetailsModel.quorumToPercent(),
                                _proposalDetailsModel.isPassing()
                                    ? HyphaColors.success
                                    : HyphaColors.error),
                          ),
                        ),
                        const HyphaDivider(),

                        /// Expiration Timer
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: ProposalExpirationTimer(
                            _proposalDetailsModel.formatExpiration(),
                          ),
                        ),

                        /// Vote Section
                        if (_proposalDetailsModel.formatExpiration() !=
                            'Expired')
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const HyphaDivider(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Text(
                                  'Cast your Vote',
                                  style: context.hyphaTextTheme.smallTitles,
                                ),
                              ),
                              ValueListenableBuilder<bool>(
                                valueListenable: _changeVoteNotifier,
                                builder: (context, isChangingVote, child) =>
                                    userVote != null && isChangingVote == false
                                        ? HyphaAppButton(
                                            onPressed: () {
                                              _changeVoteNotifier.value = true;
                                            },
                                            buttonType: ButtonType.danger,
                                            buttonColor: {
                                                  VoteStatus.pass:
                                                      HyphaColors.success,
                                                  VoteStatus.fail:
                                                      HyphaColors.error,
                                                }[userVote.voteStatus] ??
                                                HyphaColors.lightBlack,
                                            title: {
                                                  VoteStatus.pass:
                                                      'You Voted Yes',
                                                  VoteStatus.fail:
                                                      'You Voted No',
                                                }[userVote.voteStatus] ??
                                                'You chose to abstain',
                                          )
                                        : _buildVoteWidget(context),
                              ),
                            ],
                          ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}

Widget _buildVoteWidget(BuildContext context) => Column(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: HyphaAppButton(
            title: index == 0
                ? 'Yes'
                : index == 1
                    ? 'Abstain'
                    : 'No',
            onPressed: () async {
              late final VoteStatus voteStatus;

              // Determine the vote status based on the index
              switch (index) {
                case 0:
                  voteStatus = VoteStatus.pass;
                  break;
                case 1:
                  voteStatus = VoteStatus.abstain;
                  break;
                default:
                  voteStatus = VoteStatus.fail;
                  break;
              }

              // Get the bloc instances
              final proposalDetailBloc = context.read<ProposalDetailBloc>();
              // Dispatch the castVote event
              proposalDetailBloc.add(ProposalDetailEvent.castVote(voteStatus));
            },
            buttonType: ButtonType.danger,
            buttonColor: index == 0
                ? HyphaColors.success
                : index == 1
                    ? HyphaColors.lightBlack
                    : HyphaColors.error,
          ),
        ),
      ),
    );
