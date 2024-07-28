import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/onboarding/components/onboarding_appbar.dart';
import 'package:hypha_wallet/ui/token/token_settings/interactor/token_settings_bloc.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

class TokensSettingsView extends StatelessWidget {
  const TokensSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const OnboardingAppbar(title: 'Available Tokens', subTitle: ''),
        body: BlocBuilder<TokensSettingsBloc, TokensSettingsState>(
          builder: (context, state) {
            final systemTokens = state.tokens.where((t) => t.group == TokenGroup.system).toList();
            final daoTokens = state.tokens.where((t) => t.group == TokenGroup.dao).toList();
            final otherTokens = state.tokens.where((t) => t.group == TokenGroup.other).toList();

            return ListView(
              padding: const EdgeInsets.only(top: 26),
              children: [
                if (systemTokens.isNotEmpty) ...[
                  _buildGroupHeader(context, 'System Tokens'),
                  ...systemTokens.map((token) => _buildTokenItem(context, token)),
                ],
                if (daoTokens.isNotEmpty) ...[
                  _buildGroupHeader(context, 'DAO Tokens'),
                  ...daoTokens.map((token) => _buildTokenItem(context, token)),
                ],
                if (otherTokens.isNotEmpty) ...[
                  _buildGroupHeader(context, 'Other Tokens'),
                  ...otherTokens.map((token) => _buildTokenItem(context, token)),
                ],
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildGroupHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(26, 16, 26, 8),
      child: Text(
        title,
        style: context.hyphaTextTheme.smallTitles.copyWith(color: HyphaColors.primaryBlu),
      ),
    );
  }

  Widget _buildTokenItem(BuildContext context, WalletTokenData data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
      child: HyphaCard(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: HyphaAvatarImage(imageFromUrl: data.image, imageRadius: 22, name: data.name),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(data.name, style: context.hyphaTextTheme.reducedTitles),
                    Text(
                      data.symbol,
                      style: context.hyphaTextTheme.ralMediumBody.copyWith(
                        color: HyphaColors.midGrey,
                      ),
                    ),
                  ],
                ),
              ),
              Switch(
                value: data.selected,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (value) {
                  if (value) {
                    context.read<TokensSettingsBloc>().add(TokensSettingsEvent.addTokenToUser(data));
                  } else {
                    context.read<TokensSettingsBloc>().add(TokensSettingsEvent.removeTokenToUser(data));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
