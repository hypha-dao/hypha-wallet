import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hypha_wallet/core/extension/proposal_model_extensions.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/core/network/models/vote_model.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_creator.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_button.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_expiration_timer.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_header.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_percentage_indicator.dart';
import 'package:hypha_wallet/ui/proposals/details/components/proposal_voters.dart';

class ProposalDetailsView extends StatefulWidget {
  final ProposalModel proposalModel;

  const ProposalDetailsView(this.proposalModel, {super.key});

  @override
  State<ProposalDetailsView> createState() => _ProposalDetailsViewState();
}

class _ProposalDetailsViewState extends State<ProposalDetailsView> {
  final ValueNotifier<bool> _isShown = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _isOverflowing = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isExpanded = ValueNotifier<bool>(false);
  late List<String> passVoters = widget.proposalModel.fetchVotersByStatus(VoteStatus.pass);
  late List<String> failVoters = widget.proposalModel.fetchVotersByStatus(VoteStatus.fail);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkIfTextIsOverflowing();
    });
  }

  void _checkIfTextIsOverflowing() {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel lacus eget enim tincidunt viverra eget sit amet ex. Phasellus bibendum congue porta. Aenean pellentesque ut dolor pharetra volutpat. Proin ut eleifend dolor, sed faucibus ipsum. Vestibulum sollicitudin nibh ut ligula sollicitudin, vitae convallis arcu egestas. Vivamus sollicitudin leo non elit blandit rutrum. Morbi auctor neque ipsum, et varius dolor finibus eget. Curabitur pulvinar arcu sit amet porta posuere. Cras mollis massa id neque tempus, a cursus leo interdum. Etiam ut dolor vel ex ullamcorper tempor vel vel tellus. Praesent hendrerit lobortis interdum. Fusce posuere in neque iaculis ullamcorper. Vivamus vestibulum posuere purus, quis sagittis ex interdum vel. Donec convallis augue et nisl sodales, et luctus massa ultrices.', style: context.hyphaTextTheme.ralMediumBody),
      maxLines: 3,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: context.size!.width);

    if (textPainter.didExceedMaxLines) {
      _isOverflowing.value = true;
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              /// Header
              ProposalHeader(
                widget.proposalModel.daoName,
                'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: HyphaDivider(),
              ),
              /// Main Section
              Wrap(
                children: List.generate(
                  widget.proposalModel.commitment != null ? 3 : 2,
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
                      child: Text(
                        index == 0
                            ? 'Role Assignment'
                            : index == 1
                                ? 'B6'
                                : '${widget.proposalModel.commitment}%',
                        style: context.hyphaTextTheme.ralBold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  widget.proposalModel.title ?? 'No title set for this proposal.',
                  style: context.hyphaTextTheme.mediumTitles,
                ),
              ),
              ProposalCreator(
                widget.proposalModel.creator,
                'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
              ),
              ...List.generate(
                2,
                (index) => Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ProposalPercentageIndicator(
                    index == 0 ? 'Commitment' : 'Token Mix Percentage',
                      index == 0 ? widget.proposalModel.commitmentToPercent() : .4,
                      HyphaColors.lightBlue
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Duration',
                style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  '12 Cycles',
                  style: context.hyphaTextTheme.reducedTitles,
                ),
              ),
              ...List.generate(
                2,
                (index) => Text(
                  'Starting on Monday',
                  style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: HyphaDivider(),
              ),
              /// Rewards Section
              ValueListenableBuilder<bool>(
                valueListenable: _isShown,
                builder: (context, isShown, child) {
                  return isShown ? Column(
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
                                  imageFromUrl:
                                  'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hypha',
                                        style: context.hyphaTextTheme.reducedTitles,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        'Utility Token',
                                        style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  '3,200.00',
                                  style: context.hyphaTextTheme.bigTitles.copyWith(fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(height: 10)
                    ],
                  ) : const SizedBox.shrink();
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
                    valueListenable: _isShown,
                    builder: (BuildContext context, bool value, Widget? child) {
                      return Switch(
                        value: value,
                        onChanged: (newValue) {
                          _isShown.value = newValue;
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
              /// Details Section
              Text(
                'Proposal Details',
                style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
              ),
              ValueListenableBuilder<bool>(
                valueListenable: _isExpanded,
                builder: (context, isExpanded, child) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel lacus eget enim tincidunt viverra eget sit amet ex. Phasellus bibendum congue porta. Aenean pellentesque ut dolor pharetra volutpat. Proin ut eleifend dolor, sed faucibus ipsum. Vestibulum sollicitudin nibh ut ligula sollicitudin, vitae convallis arcu egestas. Vivamus sollicitudin leo non elit blandit rutrum. Morbi auctor neque ipsum, et varius dolor finibus eget. Curabitur pulvinar arcu sit amet porta posuere. Cras mollis massa id neque tempus, a cursus leo interdum. Etiam ut dolor vel ex ullamcorper tempor vel vel tellus. Praesent hendrerit lobortis interdum. Fusce posuere in neque iaculis ullamcorper. Vivamus vestibulum posuere purus, quis sagittis ex interdum vel. Donec convallis augue et nisl sodales, et luctus massa ultrices.',
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
                              valueListenable: _isOverflowing,
                              builder: (context, isOverflowing, child) {
                                return isOverflowing
                                    ? ProposalButton(
                                  isExpanded ? 'Collapse' : 'Expand',
                                  isExpanded
                                      ? Icons.keyboard_arrow_up_outlined
                                      : Icons.keyboard_arrow_down_outlined,
                                      () => _isExpanded.value = !isExpanded,
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
                      index == 0 ? widget.proposalModel.unityToPercent() : widget.proposalModel.quorumToPercent(),
                      widget.proposalModel.percentageColor()
                  ),
                ),
              ),
              const HyphaDivider(),
              /// Expiration Timer
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ProposalExpirationTimer(
                  widget.proposalModel.formatExpiration(),
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
        ),
      ),
    );
  }
}
