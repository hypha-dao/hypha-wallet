import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as Get;
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/ui/proposals/details/proposal_details_page.dart';
import 'package:hypha_wallet/ui/proposals/list/interactor/proposals_bloc.dart';

class ProposalsPage extends StatelessWidget {
  const ProposalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<ProposalsBloc>()..add(const ProposalsEvent.initial()),
      child: BlocListener<ProposalsBloc, ProposalsState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(
            navigateToProposalDetails: (ProposalModel proposal) {
              Get.Get.to(
                () => const ProposalDetailsPage(),
                transition: Get.Transition.rightToLeft,
              );
            },
          );

          context.read<ProposalsBloc>().add(const ProposalsEvent.clearPageCommand());
        },
        child: Container(),
      ),
    );
  }
}