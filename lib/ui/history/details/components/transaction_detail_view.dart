import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/ui/history/details/interactor/transaction_detail_bloc.dart';

class TransactionDetailView extends StatelessWidget {
  const TransactionDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionDetailBloc, TransactionDetailState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(),
        );
      },
    );
  }
}
