import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/ui/onboarding/components/onboarding_appbar.dart';
import 'package:hypha_wallet/ui/token/token_details/interactor/token_details_bloc.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

class TokenDetailsView extends StatelessWidget {
  final WalletTokenData data;

  const TokenDetailsView(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text(data.name)),
        body: BlocBuilder<TokenDetailsBloc, TokenDetailsState>(
          builder: (context, state) {
            return Text('TODO');
          },
        ),
      ),
    );
  }
}
