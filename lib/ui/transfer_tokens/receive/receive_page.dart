import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/transfer_tokens/receive/components/receive_view.dart';
import 'package:hypha_wallet/ui/transfer_tokens/receive/interactor/receive_bloc.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

class ReceivePage extends StatelessWidget {
  final WalletTokenData tokenData;

  const ReceivePage({super.key, required this.tokenData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<ReceiveBloc>(
        param1: tokenData,
      )..add(const ReceiveEvent.initial()),
      child: BlocListener<ReceiveBloc, ReceiveState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(navigateToSendSuccess: (String transactionId){

          });
          context.read<ReceiveBloc>().add(const ReceiveEvent.clearPageCommand());
        },
        child: const ReceiveView(),
      ),
    );
  }
}
