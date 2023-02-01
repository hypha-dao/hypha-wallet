import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/design/themes/hypha_theme.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:hypha_wallet/ui/blocs/error_handler/error_handler_bloc.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page_with_link.dart';
import 'package:hypha_wallet/ui/settings/hypha_confirmation_page.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';
import 'package:hypha_wallet/ui/settings/save_key_page.dart';
import 'package:hypha_wallet/ui/settings/save_words_page.dart';

class HyphaApp extends StatelessWidget {
  const HyphaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (_) => GetIt.I.get<AuthenticationBloc>()..add(const AuthenticationEvent.initial()),
        ),
        BlocProvider<SettingsBloc>(
          create: (_) => GetIt.I.get<SettingsBloc>()..add(const SettingsEvent.initial()),
        ),
        BlocProvider<DeeplinkBloc>(create: (_) => GetIt.I.get<DeeplinkBloc>()),
        BlocProvider<ErrorHandlerBloc>(create: (_) => GetIt.I.get<ErrorHandlerBloc>()),
      ],
      child: const HyphaAppView(),
    );
  }
}

class HyphaAppView extends StatelessWidget {
  const HyphaAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthenticationBloc, AuthenticationState>(
          listenWhen: (previous, current) {
            return previous != current;
          },
          listener: (context, state) {
            state.when(authenticated: (userProfile, authData) {
              Get.offAll(() => const HyphaBottomNavigation());
            }, unAuthenticated: (_, __) {
              Get.offAll(() => const OnboardingPage());
            }, unknown: (_, __) {
              LogHelper.d('Auth Bloc Listener unknown');
            });
          },
        ),
        BlocListener<DeeplinkBloc, DeeplinkState>(
          listenWhen: (previous, current) => previous.command != current.command,
          listener: (context, state) {
            state.command?.when(navigateToCreateAccount: () => Get.offAll(() => const OnboardingPageWithLink()));

            context.read<DeeplinkBloc>().add(const DeeplinkEvent.clearPageCommand());
          },
        ),

        BlocListener<SettingsBloc, SettingsState>(
          listenWhen: (previous, current) => current.command != null,
          listener: (context, state) {
            state.command?.whenOrNull(showSecurityPopup: (
              title,
              subtitle,
              rationale,
              mainButtonText,
              image,
              words,
              privateKey,
            ) async {
              Get.bottomSheet(
                FractionallySizedBox(
                  heightFactor: 0.87,
                  child: HyphaConfirmationPage(
                    title: title,
                    subtitle: subtitle,
                    image: image,
                    rationale: rationale,
                    primaryButtonCallback: () {
                      Get.off(state.hasWords ? SaveWordsPage(words) : SaveKeyPage(privateKey));
                    },
                    primaryButtonText: mainButtonText,
                    secondaryButtonText: 'Close',
                    secondaryButtonCallback: () {
                      Get.back();
                    },
                  ),
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                enableDrag: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                isScrollControlled: true,
              );

              context.read<SettingsBloc>().add(const SettingsEvent.clearPageCommand());
            });
          },
        ),

        /// Error Handler Bloc Listener
        BlocListener<ErrorHandlerBloc, ErrorHandlerState>(
          listenWhen: (_, currentState) => currentState.pageCommand != null,
          listener: (context, state) {
            state.pageCommand?.when(
              requestForceUpdate: () {
                /// NOTHING FOR NOW
              },
              showReLoginDialog: () {
                Get.defaultDialog(
                  title: 'Something went wrong.',
                  middleText: 'Please authenticate again.',
                  cancel: const Text('Login'),
                  onCancel: () {
                    BlocProvider.of<AuthenticationBloc>(context).add(
                      const AuthenticationEvent.authenticationLogoutRequested(),
                    );
                  },
                );
              },
              showConnectivityErrorDialog: () {
                // TODO(gguij): handle connection error
              },
              showErrorDialog: (HyphaError hyphaError) {
                Get.defaultDialog(
                  title: hyphaError.message,
                  cancel: hyphaError.actionText?.let((it) => Text(it)),
                  onCancel: hyphaError.action?.call(),
                );
              },
              showErrorMessage: (message) {
                Get.showSnackbar(GetSnackBar(message: message, duration: const Duration(seconds: 3)));
              },
            );

            context.read<ErrorHandlerBloc>().add(const ErrorHandlerEvent.onClearPageCommand());
          },
        ),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        buildWhen: (previous, current) => previous.themeMode != current.themeMode,
        builder: (context, state) {
          return GetMaterialApp(
            title: 'Hypha Wallet',
            darkTheme: HyphaTheme.darkTheme,
            theme: HyphaTheme.lightTheme,
            themeMode: state.themeMode,
            home: const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
