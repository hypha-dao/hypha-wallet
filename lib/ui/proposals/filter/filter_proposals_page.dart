import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/proposals/filter/components/filter_proposals_view.dart';
import 'package:hypha_wallet/ui/proposals/filter/interactor/filter_proposals_bloc.dart';

class FilterProposalsPage extends StatelessWidget {
  const FilterProposalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: GetIt.I.get<FilterProposalsBloc>(),
      child: BlocListener<FilterProposalsBloc, FilterProposalsState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(
            navigateToProposals: () {
              Get.back();
            },
          );

          context.read<FilterProposalsBloc>().add(const FilterProposalsEvent.clearPageCommand());
        },
        child: FilterProposalsView(),
      ),
    );
  }
}
