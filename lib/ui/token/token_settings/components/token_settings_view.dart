import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/onboarding/components/onboarding_appbar.dart';
import 'package:hypha_wallet/ui/token/token_settings/interactor/token_settings_bloc.dart';

class TokensSettingsView extends StatelessWidget {
  const TokensSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const OnboardingAppbar(title: 'Available Hypha', subTitle: ' network tokens'),
        body: BlocBuilder<TokensSettingsBloc, TokensSettingsState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(top: 26),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final data = state.tokens[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 26, right: 26),
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
                                  BlocProvider.of<TokensSettingsBloc>(context).add(
                                    TokensSettingsEvent.addTokenToUser(data),
                                  );
                                } else {
                                  BlocProvider.of<TokensSettingsBloc>(context).add(
                                    TokensSettingsEvent.removeTokenToUser(data),
                                  );
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
              ),
            );
          },
        ),
      ),
    );
  }
}
