import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/ui/proposals/details/components/proposal_details_view.dart';
import 'package:hypha_wallet/ui/proposals/details/interactor/proposal_details_bloc.dart';
import 'package:hypha_wallet/ui/sign_transaction/failed/sign_transaction_failed_page.dart';
import 'package:hypha_wallet/ui/sign_transaction/success/sign_transaction_success_page.dart';

class ProposalDetailsPage extends StatelessWidget {
  final String _proposalId;

  const ProposalDetailsPage(this._proposalId, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<ProposalDetailsBloc>(param1: _proposalId)..add(const ProposalDetailsEvent.initial()),
      child: BlocListener<ProposalDetailsBloc, ProposalDetailsState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(
            navigateToSuccessPage: () {
              Get.to(() => const SignTransactionSuccessPage(transactionType: SignSuccessTransactionType.cast));
            },
            navigateToFailurePage: (HyphaError hyphaError) {
              Get.to(() => SignTransactionFailedPage(hyphaError, text1: 'Casting vote', text2: 'An error occurred while casting your vote. Click the button below if you want to see the full error.')
              );
            },
          );

          context.read<ProposalDetailsBloc>().add(const ProposalDetailsEvent.clearPageCommand());
        },
        child: const ProposalDetailsView(),
      ),
    );
  }
}
