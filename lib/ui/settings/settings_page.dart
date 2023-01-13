import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/actionable_cards/hypha_actionable_card.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/icons/hypha_icons.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';
import 'package:hypha_wallet/ui/settings/save_key_page.dart';
import 'package:hypha_wallet/ui/settings/save_words_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return HyphaPageBackground(
          withGradient: true,
          child: Scaffold(
              backgroundColor: HyphaColors.transparent,
              body: Stack(
                children: [
                  Container(
                    height: 170,
                    decoration: const BoxDecoration(
                      gradient: HyphaColors.gradientBlu,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  ListView(
                    padding: EdgeInsets.all(22),
                    children: [
                      SizedBox(height: 62),
                      Text(
                        'Settings',
                        style: context.hyphaTextTheme.smallTitles.copyWith(
                          color: HyphaColors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      HyphaActionableCard(
                        icon: Icon(HyphaIcons.moon),
                        title: 'Dark mode',
                        subtitle: 'Switch between Dark and Light mode',
                        trailer: Switch.adaptive(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          value: state.themeMode == ThemeMode.dark,
                          onChanged: (bool value) {
                            context.read<SettingsBloc>().add(SettingsEvent.onThemeChanged());
                          },
                        ),
                      ),
                      SizedBox(height: 16),
                      BlocBuilder<AuthenticationBloc, AuthenticationState>(
                        builder: (context, state) {
                          return HyphaActionableCard(
                            icon: Icon(HyphaIcons.key),
                            title: 'Backup private key',
                            subtitle:
                                'Your private key (and the 12 secret words) are the only way to retrieve your hypha account and funds',
                            onTap: () {
                              Get.to(() => SaveKeyPage(state.userAuthData!.eOSPrivateKey.toString()));
                            },
                          );
                        },
                      ),
                      SizedBox(height: 16),
                      BlocBuilder<AuthenticationBloc, AuthenticationState>(
                        builder: (context, state) {
                          if (state.userAuthData?.words.isEmpty == true) {
                            return SizedBox.shrink();
                          } else {
                            return HyphaActionableCard(
                              icon: Icon(HyphaIcons.shield),
                              title: 'Backup 12 words',
                              subtitle:
                                  'The 12 secret words (and the private key) are the only way to retrieve your hypha account and funds',
                              onTap: () {
                                Get.to(() => SaveWordsPage(state.userAuthData!.words));
                              },
                            );
                          }
                        },
                      ),
                      SizedBox(height: 16),
                      ListTile(
                        minLeadingWidth: 0,
                        onTap: () {
                          context.read<AuthenticationBloc>().add(AuthenticationEvent.authenticationLogoutRequested());
                        },
                        title: Text('Logout'),
                      )
                    ],
                  ),
                ],
              )),
        );
      },
    );
  }
}
