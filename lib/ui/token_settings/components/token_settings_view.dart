import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/token_settings/interactor/token_settings_bloc.dart';

class TokensSettingsView extends StatelessWidget {
  const TokensSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      child: Scaffold(
        body: BlocBuilder<TokensSettingsBloc, TokensSettingsState>(
          builder: (context, state) {
            return ListView.separated(
              itemBuilder: (context, index) {
                final data = state.tokens[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: HyphaCard(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 1,
                            child: HyphaAvatarImage(imageFromUrl: data.image, imageRadius: 20, name: data.name),
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(data.name, style: context.hyphaTextTheme.reducedTitles),
                                const SizedBox(height: 4),
                                Text(data.symbol, style: context.hyphaTextTheme.ralMediumLabel),
                              ],
                            ),
                          ),
                          Switch(
                            value: data.selected,
                            onChanged: (value) {
                              if (value) {
                                BlocProvider.of<TokensSettingsBloc>(context).add(TokensSettingsEvent.addTokenToUser(
                                  data,
                                ));
                              } else {
                                BlocProvider.of<TokensSettingsBloc>(context).add(TokensSettingsEvent.removeTokenToUser(
                                  data,
                                ));
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (_, __) {
                return const SizedBox(height: 16);
              },
              itemCount: state.tokens.length,
            );
          },
        ),
      ),
    );
  }
}
