import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/wallet/components/wallet_view.dart';
import 'package:hypha_wallet/ui/wallet/interactor/wallet_bloc.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<WalletBloc>()..add(const WalletEvent.initial()),
      child: BlocListener<WalletBloc, WalletState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          context.read<WalletBloc>().add(const WalletEvent.clearPageCommand());
        },
        child: const WalletView(),
      ),
    );
  }
}
