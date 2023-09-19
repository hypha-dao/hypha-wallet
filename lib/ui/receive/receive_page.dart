import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/receive/components/receive_view.dart';
import 'package:hypha_wallet/ui/receive/interactor/receive_bloc.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

class ReceivePage extends StatelessWidget {
  final UserProfileData receiverUser;
  final WalletTokenData tokenData;

  const ReceivePage({super.key, required this.receiverUser, required this.tokenData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<ReceiveBloc>(
        param1: receiverUser,
        param2: tokenData,
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
