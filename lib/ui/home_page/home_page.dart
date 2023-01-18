import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/home_page/components/home_view.dart';
import 'package:hypha_wallet/ui/home_page/interactor/home_bloc.dart';
import 'package:hypha_wallet/ui/transaction_details/transaction_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<HomeBloc>()..add(const HomeEvent.initial()),
      child: BlocListener<HomeBloc, HomeState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(
            navigateToTransactionDetails: (data) {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => FractionallySizedBox(
                  heightFactor: 0.9,
                  child: TransactionDetailsPage(qrCodeData: data),
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
              );
            },
          );

          context.read<HomeBloc>().add(const HomeEvent.clearPageCommand());
        },
        child: const HomeView(),
      ),
    );
  }
}
