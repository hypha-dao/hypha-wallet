import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/models/proposal_model.dart';
import 'package:hypha_wallet/core/network/repository/proposal_repository.dart';
import 'package:hypha_wallet/ui/proposals/details/components/proposal_detail_view.dart';
import 'package:hypha_wallet/ui/proposals/details/interactor/proposal_detail_bloc.dart';
import 'package:hypha_wallet/ui/proposals/details/usecases/get_proposal_details_use_case.dart';

import '../../../core/error_handler/error_handler_manager.dart';
import '../../../core/network/repository/auth_repository.dart';

class ProposalDetailsPage extends StatelessWidget {
  final String proposalId;

  const ProposalDetailsPage({super.key, required this.proposalId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProposalDetailBloc(proposalId,GetProposalDetailsUseCase(GetIt.I.get<AuthRepository>(),GetIt.I.get<ProposalRepository>()),GetIt.I.get<ErrorHandlerManager>())..add(const ProposalDetailEvent.initial()),
      child: BlocListener<ProposalDetailBloc, ProposalDetailState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(
            navigateToProposalDetails: () {},
          );
          context.read<ProposalDetailBloc>().add(const ProposalDetailEvent.clearPageCommand());
        },
        child: ProposalDetailView(),
      ),
    );
  }
}
