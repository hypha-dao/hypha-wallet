import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/ui/proposals/details/components/proposal_details_view.dart';

class ProposalDetailsPage extends StatelessWidget {
  final ProposalModel proposalModel;
  const ProposalDetailsPage(this.proposalModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return ProposalDetailsView(proposalModel);
  }
}
