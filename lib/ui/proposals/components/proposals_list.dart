import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/ui/proposals/list/components/hypha_proposals_action_card.dart';

class ProposalsList extends StatelessWidget {
  final List<ProposalModel> proposals;

  const ProposalsList(this.proposals, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.only(bottom: 22),
        itemBuilder: (BuildContext context, int index) => HyphaProposalsActionCard(proposals[index]),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 16);
        },
        itemCount: proposals.length);
  }
}
