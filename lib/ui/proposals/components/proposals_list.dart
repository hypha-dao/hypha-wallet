import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/ui/proposals/list/components/hypha_proposals_action_card.dart';
import 'package:hypha_wallet/ui/proposals/list/interactor/proposals_bloc.dart';

class ProposalsList extends StatefulWidget {
  final List<ProposalModel> proposals;

  const ProposalsList(this.proposals, {super.key});

  @override
  _ProposalsListState createState() => _ProposalsListState();
}

class _ProposalsListState extends State<ProposalsList> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    context.read<ProposalsBloc>().stream.listen((state) {
      _isLoadingMore = false;
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent + 50 && !_isLoadingMore) {
      _isLoadingMore = true;
      context.read<ProposalsBloc>().add(ProposalsEvent.load(() => _isLoadingMore = false));
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.only(bottom: 22),
      itemCount: widget.proposals.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            HyphaProposalsActionCard(widget.proposals[index]),
            const SizedBox(height: 16),
          ],
        );
      },
    );
  }
}
