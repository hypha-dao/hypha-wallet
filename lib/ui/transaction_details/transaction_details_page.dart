import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as GetX;
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/transaction_details/components/transaction_details_view.dart';
import 'package:hypha_wallet/ui/transaction_details/components/transaction_failed_page.dart';
import 'package:hypha_wallet/ui/transaction_details/components/transaction_success_page.dart';
import 'package:hypha_wallet/ui/transaction_details/interactor/data/transaction_action_data.dart';
import 'package:hypha_wallet/ui/transaction_details/interactor/transaction_details_bloc.dart';

class TransactionDetailsPage extends StatelessWidget {
  final TransactionDetailsData transactionDetailsData;

  const TransactionDetailsPage({super.key, required this.transactionDetailsData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<TransactionDetailsBloc>(param1: transactionDetailsData)
        ..add(const TransactionDetailsEvent.initial()),
      child: BlocListener<TransactionDetailsBloc, TransactionDetailsState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(transactionCancelled: () {
            GetX.Get.back();
          }, navigateToTransactionSuccess: () {
            GetX.Get.off(() => const TransactionSuccessPage(), transition: GetX.Transition.downToUp);
          }, navigateToTransactionFailed: () {
            GetX.Get.off(() => const TransactionFailedPage(), transition: GetX.Transition.downToUp);
          });

          context.read<TransactionDetailsBloc>().add(const TransactionDetailsEvent.clearPageCommand());
        },
        child: const TransactionDetailsView(),
      ),
    );
  }
}
