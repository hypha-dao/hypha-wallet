import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/cards/hypha_actionable_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/icons/hypha_icons.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';
import 'package:hypha_wallet/ui/settings/logout_confirmation_page.dart';
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
              appBar: AppBar(
                centerTitle: true,
                title: Text(
                  'Settings',
                  style: context.hyphaTextTheme.smallTitles.copyWith(color: HyphaColors.white),
                ),
                backgroundColor: HyphaColors.primaryBlu,
              ),
              body: ListView(
                padding: const EdgeInsets.all(22),
                children: [
                  HyphaActionableCard(
                    icon: const Icon(HyphaIcons.moon),
                    title: 'Dark mode',
                    subtitle: 'Switch between Dark and Light mode',
                    trailer: Switch.adaptive(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: state.themeMode == ThemeMode.dark,
                      onChanged: (bool value) {
                        context.read<SettingsBloc>().add(const SettingsEvent.onThemeChanged());
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<AuthenticationBloc, AuthenticationState>(
                    builder: (context, state) {
                      return HyphaActionableCard(
                        icon: const Icon(HyphaIcons.key),
                        title: 'Backup private key',
                        subtitle:
                            'Your private key (and the 12 secret words) are the only way to retrieve your hypha account and funds',
                        onTap: () {
                          Get.to(() => SaveKeyPage(state.userAuthData!.eOSPrivateKey.toString()));
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<AuthenticationBloc, AuthenticationState>(
                    builder: (context, state) {
                      if (state.userAuthData?.words.isEmpty == true) {
                        return const SizedBox.shrink();
                      } else {
                        return HyphaActionableCard(
                          icon: const Icon(HyphaIcons.shield),
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
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    color: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () async {
                        final result = await showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          builder: (context) => const FractionallySizedBox(
                            heightFactor: 0.87,
                            child: LogoutConfirmationPage(),
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                          ),
                        );

                        if (result) {
                          context
                              .read<AuthenticationBloc>()
                              .add(const AuthenticationEvent.authenticationLogoutRequested());
                        }
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.logout,
                          color: context.isDarkTheme ? HyphaColors.white : HyphaColors.black,
                        ),
                        title: Text('Logout', style: context.hyphaTextTheme.smallTitles),
                      ),
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}
