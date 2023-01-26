import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/ui/history/details/components/transaction_detail_view.dart';
import 'package:hypha_wallet/ui/history/details/interactor/transaction_detail_bloc.dart';

class TransactionDetailsPage extends StatelessWidget {
  final TransactionModel transactionModel;

  const TransactionDetailsPage({super.key, required this.transactionModel});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.I.get<TransactionDetailBloc>(param1: transactionModel)..add(const TransactionDetailEvent.initial()),
      child: BlocListener<TransactionDetailBloc, TransactionDetailState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(
            navigateToTransactionDetails: () {},
          );

          context.read<TransactionDetailBloc>().add(const TransactionDetailEvent.clearPageCommand());
        },
        child: TransactionDetailView(transactionModel),
      ),
    );
  }
}
