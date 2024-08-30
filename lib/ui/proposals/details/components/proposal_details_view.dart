import 'package:flutter/cupertino.dart';
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
import 'package:percent_indicator/linear_percent_indicator.dart';

// TODO: check spaces (incl. image sizes), and optimize the code
class ProposalDetailsView extends StatefulWidget {
  final ProposalModel proposalModel;

  const ProposalDetailsView(this.proposalModel, {super.key});

  @override
  State<ProposalDetailsView> createState() => _ProposalDetailsViewState();
}

class _ProposalDetailsViewState extends State<ProposalDetailsView> {
  bool _isExpanded = false;
  bool _isShown = true;
  late List<String> passVoters = widget.proposalModel.fetchVotersByStatus(VoteStatus.pass);
  late List<String> failVoters = widget.proposalModel.fetchVotersByStatus(VoteStatus.fail);

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        appBar: AppBar(
          // TODO: display the status bar
          scrolledUnderElevation: 0,
          title: const Text('Proposal Details'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              buildHeader(
                context,
                widget.proposalModel.daoName,
                'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: HyphaDivider(),
              ),
              Wrap(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 10, bottom: 10),
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
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
              _buildProposalRoleAssignment(
                context,
                widget.proposalModel.commitment ?? 0,
                widget.proposalModel.title ?? 'No title set for this proposal.',
              ),
              const SizedBox(height: 20),
              _buildProposalCardFooter(
                context,
                widget.proposalModel.creator,
                'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
              ),
              ...List.generate(
                2,
                (index) => Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: _buildProposalPercentageIndicator(
                    context,
                    index == 0 ? 'Commitment' : 'Token Mix Percentage',
                      index == 0 ? widget.proposalModel.commitmentToPercent() : .4,
                      HyphaColors.lightBlue
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Duration',
                style: context.hyphaTextTheme.ralMediumSmallNote
                    .copyWith(color: HyphaColors.midGrey),
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
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Starting on Monday',
                    style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: HyphaDivider(),
              ),
              if (_isShown) ...[
                Text(
                  'Reward for 1 cycle',
                  style: context.hyphaTextTheme.ralMediumSmallNote
                      .copyWith(color: HyphaColors.midGrey),
                ),
                ...List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              HyphaAvatarImage(
                                imageRadius: 24,
                                imageFromUrl:
                                'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
                                onTap: () {},
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
              ],
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
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
                    Switch(
                      value: _isShown,
                      onChanged: (value) {
                        setState(() {
                          _isShown = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: HyphaDivider(),
              ),
              Text(
                'Proposal Details',
                style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
              ),
              // TODO: when the text is short don't show the expand button
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'blablalbal bvlaLBALBAL BALBLALBALBAL asldald las ldasldal dlasd las dlasd lasd lsad lass ldsa ldaldsa ld sadsa sa a sa a a daasdad dassadsa da daa sadasda das dasdaa dlsal dal dsal dla ld',
                  style: context.hyphaTextTheme.ralMediumBody,
                  maxLines: _isExpanded ? null : 4,
                  overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                ),
              ),
              Row(
                children: [
                  const Expanded(child: HyphaDivider()),
                  button(
                      context,
                      _isExpanded ? 'Collapse' : 'Expand',
                      _isExpanded
                          ? Icons.keyboard_arrow_up_outlined
                          : Icons.keyboard_arrow_down_outlined,
                      () => setState(() {
                            _isExpanded = !_isExpanded;
                          }))
                ],
              ),
              Text(
                'Voting Scores',
                style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '${passVoters.length} members voted Yes',
                style: context.hyphaTextTheme.reducedTitles,
              ),
              SizedBox(
                height: 50,
                child: Stack(
                  children: List.generate(
                    passVoters.take(9).length,
                        (index) {
                      return Positioned(
                        left: index * 30.0,
                        child: index == 8
                            ? Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.offWhite,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: HyphaColors.lightBlack,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '+${passVoters.length - 8}',
                              style: context.hyphaTextTheme.reducedTitles.copyWith(
                                color: context.isDarkMode ? HyphaColors.offWhite : HyphaColors.lightBlack,
                              ),
                            ),
                          ),
                        )
                            : HyphaAvatarImage(
                          imageRadius: 24,
                          imageFromUrl: 'https://etudestech.com/wp-content/uploads/2023/05/midjourney-scaled.jpeg',
                          onTap: () {},
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '${failVoters.length} members voted No',
                style: context.hyphaTextTheme.reducedTitles,
              ),
              const SizedBox(
                height: 20,
              ),
              ...List.generate(
                2,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: _buildProposalPercentageIndicator(
                    context,
                    index == 0 ? 'Unity' : 'Quorum',
                      index == 0 ? widget.proposalModel.unityToPercent() : widget.proposalModel.quorumToPercent(),
                      HyphaColors.success
                  ),
                ),
              ),
              const HyphaDivider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: _buildProposalExpirationInfo(
                  context,
                  widget.proposalModel.formatExpiration(),
                ),
              ),
              const HyphaDivider(),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
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
            ],
          ),
        ),
      ),
    );
  }
}

// TODO: make these widgets reusable

Widget _buildProposalExpirationInfo(BuildContext context, String expiration) {
  return Row(
    children: [
      const Icon(CupertinoIcons.hourglass,
          color: HyphaColors.midGrey, size: 17),
      const SizedBox(width: 5),
      Expanded(
        child: Text(
          expiration,
          style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
    ],
  );
}

Widget buildHeader(BuildContext context, String daoName, String daoImageUrl) {
  return Row(
    children: [
      HyphaAvatarImage(
        imageRadius: 18,
        name: '',
        imageFromUrl: daoImageUrl,
        onTap: () {},
      ),
      const SizedBox(width: 5),
      Flexible(
        child: Text(
          daoName,
          style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      const SizedBox(width: 15),
      Text(
        'Marketing Circle',
        style: context.hyphaTextTheme.ralMediumSmallNote,
        maxLines: 1,
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
          style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
          maxLines: null,
        ),
      ),
    ],
  );
}

Widget button(
    BuildContext context, String text, IconData icon, Function onTap) {
  return GestureDetector(
    onTap: () => onTap(),
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
            text,
            style: context.hyphaTextTheme.ralBold,
          ),
          const SizedBox(width: 8),
          Icon(icon, size: 30),
        ],
      ),
    ),
  );
}

Widget _buildProposalPercentageIndicator(
    BuildContext context, String title, double percent, Color progressColor) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: context.hyphaTextTheme.reducedTitles,
          ),
          Text(
            '${(percent * 100).toInt()}%',
            style: context.hyphaTextTheme.reducedTitles,
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
        progressColor: progressColor,
      ),
    ],
  );
}

Widget _buildProposalRoleAssignment(
    BuildContext context, int commitment, String title) {
  return Text(
    title,
    style: context.hyphaTextTheme.mediumTitles,
    maxLines: null,
  );
}
