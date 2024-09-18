import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/proposals/list/components/proposals_view.dart';
import 'package:hypha_wallet/ui/proposals/list/interactor/proposals_bloc.dart';

class ProposalsPage extends StatelessWidget {
  const ProposalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<ProposalsBloc>()..add(const ProposalsEvent.initial()),
      child: const ProposalsView(),
    );
  }
}
