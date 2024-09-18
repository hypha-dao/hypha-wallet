import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/ui/proposals/details/components/proposal_details_view.dart';
import 'package:hypha_wallet/ui/proposals/details/interactor/proposal_detail_bloc.dart';
import 'package:hypha_wallet/ui/proposals/details/usecases/get_proposal_details_use_case.dart';

class ProposalDetailsPage extends StatelessWidget {
  final String proposalId;

  const ProposalDetailsPage({super.key, required this.proposalId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProposalDetailBloc(proposalId, GetIt.I.get<GetProposalDetailsUseCase>(), GetIt.I.get<ErrorHandlerManager>())
        ..add(const ProposalDetailEvent.initial()),
      child: const ProposalDetailsView()
    );
  }
}
