import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/cards/hypha_actionable_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/icons/hypha_icons.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/settings/hypha_confirmation_page.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';
import 'package:hypha_wallet/ui/settings/save_key_page.dart';
import 'package:hypha_wallet/ui/settings/save_words_page.dart';
import 'package:hypha_wallet/ui/shared/ui_constants.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

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
                BlocBuilder<AuthenticationBloc, AuthenticationState>(
                  builder: (context, state) {
                    if (state.userAuthData?.words.isEmpty == true) {
                      return const SizedBox.shrink();
                    } else {
                      return Column(
                        children: [
                          const SizedBox(height: 16),
                          HyphaActionableCard(
                            icon: const Icon(HyphaIcons.shield),
                            title: 'Backup 12 words',
                            subtitle:
                                'The 12 secret words (and the private key) are the only way to retrieve your hypha account and funds',
                            onTap: () {
                              Get.to(() => SaveWordsPage(state.userAuthData!.words));
                            },
                          ),
                        ],
                      );
                    }
                  },
                ),
                const SizedBox(height: 16),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  color: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () async {
                      await onLogoutTapped(context);
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
            ),
          ),
        );
      },
    );
  }

  Future<void> onLogoutTapped(BuildContext context) async {
    final result = await showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (context) => FractionallySizedBox(
        heightFactor: UIConstants.bottomSheetHeightFraction,
        child: HyphaConfirmationPage(
          title: 'Log-out',
          subtitle: 'Are you sure you want to log-out?',
          image: 'assets/images/signout.png',
          primaryButtonCallback: () {
            Get.back(result: true);
          },
          primaryButtonText: 'YES LOG-OUT',
          secondaryButtonText: 'NO, NEVER MIND',
          secondaryButtonCallback: () {
            Get.back(result: false);
          },
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
    );

    if (result) {
      context.read<AuthenticationBloc>().add(const AuthenticationEvent.authenticationLogoutRequested());
    }
  }
}
