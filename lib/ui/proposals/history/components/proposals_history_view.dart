import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/ui/proposals/components/proposals_list.dart';
import 'package:hypha_wallet/ui/proposals/history/interactor/proposals_history_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';

class ProposalsHistoryView extends StatelessWidget {
  const ProposalsHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.isDarkMode ? HyphaColors.darkBlack : HyphaColors.offWhite,
        appBar: AppBar(
          title: const Text('Proposals History'),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            context.read<ProposalsHistoryBloc>().add(const ProposalsHistoryEvent.initial(refresh: true));
          },
          child: BlocBuilder<ProposalsHistoryBloc, ProposalsHistoryState>(
              builder: (context, state) {
            return HyphaBodyWidget(pageState: state.pageState, success: (context) {
              return Container(
                padding: const EdgeInsets.all(20),
                child: ProposalsList(state.proposals),
              );
            });
          }),
        )
    );
  }
}
