import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
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
            return Column(
              children: [
                HyphaAvatarImage(imageRadius: 40, name: data.name, imageFromUrl: data.image),
                Text('Balance', style: context.hyphaTextTheme.ralMediumLabel),
                Text(data.userOwnedAmount?.toString() ?? 0.toString(), style: context.hyphaTextTheme.bigTitles),
                Row(
                  children: [
                    HyphaAppButton(
                      title: 'Receive',
                      onPressed: () {},
                    ),
                    HyphaAppButton(
                      title: 'Send',
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
