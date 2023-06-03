import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/token/token_details/components/token_details_view.dart';
import 'package:hypha_wallet/ui/token/token_details/interactor/token_details_bloc.dart';
import 'package:hypha_wallet/ui/token/token_settings/components/token_settings_view.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

class TokensDetailsPage extends StatelessWidget {
  final WalletTokenData data;

  const TokensDetailsPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<TokenDetailsBloc>(param1: data)..add(const TokenDetailsEvent.initial()),
      child: BlocListener<TokenDetailsBloc, TokenDetailsState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          context.read<TokenDetailsBloc>().add(const TokenDetailsEvent.clearPageCommand());
        },
        child: TokenDetailsView(data),
      ),
    );
  }
}
