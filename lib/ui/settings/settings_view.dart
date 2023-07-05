import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/cards/hypha_actionable_card.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/icons/hypha_icons.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/settings/hypha_confirmation_page.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';
import 'package:hypha_wallet/ui/settings/save_key_page.dart';
import 'package:hypha_wallet/ui/settings/save_words_page.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';
import 'package:hypha_wallet/ui/shared/ui_constants.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, SettingsState state) {
        return HyphaBodyWidget(
          pageState: state.pageState,
          loading: (context) => ColoredBox(
            color: Theme.of(context).colorScheme.background,
            child: Center(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Deleting Account...',
                      style: context.hyphaTextTheme.mediumTitles
                          .copyWith(color: Theme.of(context).colorScheme.onBackground),
                    ),
                    const SizedBox(height: 48),
                    CircularProgressIndicator(color: Theme.of(context).colorScheme.onBackground),
                  ],
                ),
              ),
            ),
          ),
          success: (value) => HyphaPageBackground(
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
              body: SafeArea(
                child: ListView(
                  padding: const EdgeInsets.all(22),
                  children: [
                    HyphaActionableCard(
                      icon: const Icon(HyphaIcons.moon),
                      title: 'Dark mode',
                      subtitle: 'Switch between Dark and Light mode',
                      trailer: Switch(
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
                    BlocBuilder<AuthenticationBloc, AuthenticationState>(
                      builder: (context, AuthenticationState state) {
                        return HyphaCard(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(16),
                            onTap: () async {
                              await onLogoutTapped(context, state);
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.logout,
                                color: context.isDarkTheme ? HyphaColors.white : HyphaColors.black,
                              ),
                              title: Text('Log out', style: context.hyphaTextTheme.smallTitles),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 60),
                    Text(
                      'Hypha Wallet Version: ${state.version}',
                      style: context.hyphaTextTheme.ralMediumBody.copyWith(
                        color: HyphaColors.midGrey,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Build Number: ${state.buildNumber}',
                      style: context.hyphaTextTheme.ralMediumBody.copyWith(
                        color: HyphaColors.midGrey,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    InkWell(
                      onTap: () async {
                        await onDeleteTapped(context);
                      },
                      child: Text(
                        'Delete Hypha Account',
                        textAlign: TextAlign.center,
                        style: context.hyphaTextTheme.ralMediumBody.copyWith(
                          color: HyphaColors.midGrey,
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> onLogoutTapped(BuildContext context, AuthenticationState state) async {
    final bool hasWords = state.userAuthData?.words.isNotEmpty == true;
    final bool? result = await showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (context) => FractionallySizedBox(
        heightFactor: UIConstants.bottomSheetHeightFraction,
        child: HyphaConfirmationPage(
          title: 'Log out',
          subtitle: 'Are you sure you want to log out of your account?',
          rationale:
              'By logging out you will disconnect your blockchain account from the app. In order to access your account again you will need to import it by using your private key.',
          image: 'assets/images/signout.png',
          primaryButtonText: 'LOG OUT',
          primaryButtonCallback: () {
            Get.back(result: true);
          },
          secondaryButtonText: hasWords ? 'BACKUP 12 WORDS' : 'BACKUP PRIVATE KEY',
          secondaryButtonCallback: () {
            if (hasWords) {
              Get.to(() => SaveWordsPage(state.userAuthData!.words));
            } else {
              Get.to(() => SaveKeyPage(state.userAuthData!.eOSPrivateKey.toString()));
            }
          },
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
    );

    if (result == true) {
      context.read<AuthenticationBloc>().add(const AuthenticationEvent.authenticationLogoutRequested());
    }
  }

  Future<void> onDeleteTapped(BuildContext context) async {
    final bool? result = await showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (context) => FractionallySizedBox(
        heightFactor: UIConstants.bottomSheetHeightFraction,
        child: HyphaConfirmationPage(
          title: 'Delete Hypha Account',
          subtitle: 'Irreversible action',
          rationale:
              'Are you sure you want to delete the Hypha Account? This action is irreversible and you will lose all the informations connected to the account.',
          image: 'assets/images/warning.png',
          primaryButtonText: 'CANCEL',
          primaryButtonCallback: () {
            Get.back(result: false);
          },
          primaryButtonType: ButtonType.danger,
          secondaryButtonText: 'DELETE ACCOUNT',
          secondaryButtonCallback: () {
            Get.back(result: true);
          },
          halfBackground: const HyphaHalfBackground(backgroundColor: HyphaColors.error, showTopBar: false),
          subtitleColor: HyphaColors.error,
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
    );

    if (result == true) {
      context.read<SettingsBloc>().add(const SettingsEvent.onDeleteAccountTapped());
    }
  }
}
