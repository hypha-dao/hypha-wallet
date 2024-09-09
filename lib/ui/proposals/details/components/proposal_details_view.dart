import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hypha_wallet/core/extension/base_proposal_model_extension.dart';
import 'package:hypha_wallet/core/extension/proposal_details_model_extension.dart';
import 'package:hypha_wallet/core/network/models/proposal_details_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
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
  final ValueNotifier<bool> _isShownNotifier = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _isOverflowingNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isExpandedNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<String?> _detailsNotifier = ValueNotifier<String?>(null);

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
          return HyphaBodyWidget(pageState: state.pageState, success: (context) {
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
                  // TODO(Saif): display DAO image
                  ProposalHeader(
                    _proposalDetailsModel.daoName ?? '',
                    'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 20),
                    child: HyphaDivider(),
                  ),
                  /// Main Section
                  Wrap(
                    children: List.generate(
                      _proposalDetailsModel.commitment != null ? 3 : 2,
                          (index) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: context.isDarkMode
                                  ? HyphaColors.white
                                  : HyphaColors.lightBlack,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // TODO(Zied-Saif): figure these out (B6 and Role)
                          child: Text(
                            index == 0
                                ? 'Role ${_proposalDetailsModel.type}'
                                : index == 1
                                ? 'B6'
                                : '${_proposalDetailsModel.commitment}%',
                            style: context.hyphaTextTheme.ralBold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      _proposalDetailsModel.title ?? 'No title',
                      style: context.hyphaTextTheme.mediumTitles,
                    ),
                  ),
                  // TODO(Saif): display creator image
                  ProposalCreator(
                    _proposalDetailsModel.creator,
                    'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
                  ),
                  ...List.generate(
                    2,
                        (index) => Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ProposalPercentageIndicator(
                          index == 0 ? 'Commitment' : 'Token Mix Percentage',
                          index == 0 ? _proposalDetailsModel.commitmentToPercent() : _proposalDetailsModel.tokenMixToPercent(),
                          HyphaColors.lightBlue
                      ),
                    ),
                  ),
                  if (!(_proposalDetailsModel.cycleCount == null && _proposalDetailsModel.cycleStartDate == null)) ...[
                    const SizedBox(height: 20),
                    Text(
                      'Duration',
                      style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '${_proposalDetailsModel.cycleCount} Cycles',
                        style: context.hyphaTextTheme.reducedTitles,
                      ),
                    ),
                    ...List.generate(
                      2,
                          (index) => Text(
                        index == 0 ? 'Starting on ${_proposalDetailsModel.formatCycleStartDate()}' :
                        'Ending on ${_proposalDetailsModel.cycleEndDate()}',
                        style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                      ),
                    ),
                  ],
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: HyphaDivider(),
                  ),
                  /// Rewards Section
                  // TODO(Zied): implement the logic
                  if (!(_proposalDetailsModel.utilityAmount == null && _proposalDetailsModel.utilityAmountPerPeriod == null)) ... [
                    ValueListenableBuilder<bool>(
                      valueListenable: _isShownNotifier,
                      builder: (context, isShown, child) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Reward for 1 cycle',
                              style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
                            ),
                            ...List.generate(
                                3,
                                    (index) => Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      const HyphaAvatarImage(
                                        imageRadius: 24,
                                        imageFromUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                            _proposalDetailsModel.tokenTitle(index) ?? '',
                                              style: context.hyphaTextTheme.reducedTitles,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Text(
                                              index == 0 ? 'Utility Token' : index == 1 ? 'Voice Token' : 'Cash Token',
                                              style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        _proposalDetailsModel.tokenValue(index) ?? '',
                                        style: context.hyphaTextTheme.bigTitles.copyWith(fontWeight: FontWeight.normal),
                                      )
                                    ],
                                  ),
                                )),
                            const SizedBox(height: 10)
                          ],
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Show rewards for 1 cycle',
                            style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 10),
                        ValueListenableBuilder<bool>(
                          valueListenable: _isShownNotifier,
                          builder: (BuildContext context, bool value, Widget? child) {
                            return Switch(
                              value: value,
                              onChanged: (newValue) {
                                _isShownNotifier.value = newValue;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: HyphaDivider(),
                    ),
                  ],
                  /// Details Section
                  if (_proposalDetailsModel.description != null) ... [
                    Text(
                      'Proposal Details',
                      style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
                    ),
                    ValueListenableBuilder<bool>(
                      valueListenable: _isExpandedNotifier,
                      builder: (context, isExpanded, child) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                _proposalDetailsModel.description ?? '',
                                style: context.hyphaTextTheme.ralMediumBody,
                                maxLines: isExpanded ? null : 3,
                                overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Row(
                                children: [
                                  const Expanded(child: HyphaDivider()),
                                  ValueListenableBuilder<bool>(
                                    valueListenable: _isOverflowingNotifier,
                                    builder: (context, isOverflowing, child) {
                                      return isOverflowing
                                          ? ProposalButton(
                                        isExpanded ? 'Collapse' : 'Expand',
                                        isExpanded
                                            ? Icons.keyboard_arrow_up_outlined
                                            : Icons.keyboard_arrow_down_outlined,
                                            () => _isExpandedNotifier.value = !isExpanded,
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
                    style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
                  ),
                  if(passVoters.isNotEmpty) ... [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '${passVoters.length} members voted Yes',
                        style: context.hyphaTextTheme.reducedTitles,
                      ),
                    ),
                    ProposalVoters(passVoters)
                  ],
                  if(failVoters.isNotEmpty) ... [
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
                          index == 0 ? _proposalDetailsModel.unityToPercent() : _proposalDetailsModel.quorumToPercent(),
                          _proposalDetailsModel.isPassing() ? HyphaColors.success : HyphaColors.error
                      ),
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
                  const HyphaDivider(),
                  /// Vote Section
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Cast your Vote',
                      style: context.hyphaTextTheme.smallTitles,
                    ),
                  ),
                  ...List.generate(
                    3,
                        (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: HyphaAppButton(
                        title: index == 0
                            ? 'Yes'
                            : index == 1
                            ? 'Abstain'
                            : 'No',
                        onPressed: () async {},
                        buttonType: ButtonType.danger,
                        buttonColor: index == 0
                            ? HyphaColors.success
                            : index == 1
                            ? HyphaColors.lightBlack
                            : HyphaColors.error,

                      ),
                    ),
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
