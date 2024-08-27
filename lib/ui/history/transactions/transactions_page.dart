import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/history/transactions/components/transactions_view.dart';
import 'package:hypha_wallet/ui/history/transactions/interactor/transactions_bloc.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<TransactionsBloc>()..add(const TransactionsEvent.initial()),
      child: BlocListener<TransactionsBloc, TransactionsState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(
            navigateToTransactionDetails: () {},
          );
          context.read<TransactionsBloc>().add(const TransactionsEvent.clearPageCommand());
        },
        child: const TransactionsView(),
      ),
    );
  }
}
