import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
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
            if (state.pageState == PageState.loading) {
              return const Center(child: CircularProgressIndicator());
            }

            return RefreshIndicator(
              onRefresh: () async {
                context.read<TokensSettingsBloc>().add(const TokensSettingsEvent.refresh());
              },
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        _buildTokenGroup(
                            context, 'System Tokens', state.tokens.where((t) => t.group == TokenGroup.system).toList()),
                        _buildTokenGroup(
                            context, 'DAO Tokens', state.tokens.where((t) => t.group == TokenGroup.dao).toList()),
                        _buildTokenGroup(
                            context, 'Other Tokens', state.tokens.where((t) => t.group == TokenGroup.other).toList()),
                      ]),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildTokenGroup(BuildContext context, String title, List<WalletTokenData> tokens) {
    if (tokens.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildGroupHeader(context, title),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: tokens.length,
          itemBuilder: (context, index) => _buildTokenItem(context, tokens[index]),
        ),
      ],
    );
  }

  Widget _buildGroupHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 16, 10, 8),
      child: Text(
        title,
        style: context.hyphaTextTheme.smallTitles.copyWith(color: HyphaColors.primaryBlu),
      ),
    );
  }

  Widget _buildTokenItem(BuildContext context, WalletTokenData data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: HyphaCard(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              SizedBox(
                width: 44,
                height: 44,
                child: HyphaAvatarImage(
                  imageFromUrl: data.image,
                  imageRadius: 22,
                  name: data.name,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      data.name,
                      style: context.hyphaTextTheme.reducedTitles,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      data.symbol,
                      style: context.hyphaTextTheme.ralMediumBody.copyWith(
                        color: HyphaColors.midGrey,
                      ),
                      overflow: TextOverflow.ellipsis,
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
