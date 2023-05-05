import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/design/themes/hypha_theme.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:hypha_wallet/ui/blocs/error_handler/error_handler_bloc.dart';
import 'package:hypha_wallet/ui/blocs/push_notifications/push_notifications_bloc.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page_with_link.dart';
import 'package:hypha_wallet/ui/settings/hypha_confirmation_page.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';
import 'package:hypha_wallet/ui/settings/save_key_page.dart';
import 'package:hypha_wallet/ui/settings/save_words_page.dart';
import 'package:hypha_wallet/ui/shared/ui_constants.dart';
import 'package:hypha_wallet/ui/sign_transaction/sign_transaction_page.dart';

const kLogQuietMode = false;

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
        BlocProvider<PushNotificationsBloc>(create: (_) => GetIt.I.get<PushNotificationsBloc>()),
      ],
      child: const HyphaAppView(),
    );
  }
}

class HyphaAppView extends StatelessWidget {
  const HyphaAppView({super.key});

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthenticationBloc, AuthenticationState>(
          listenWhen: (previous, current) {
            return previous.authStatus != current.authStatus;
          },
          listener: (context, state) {
            switch (state.authStatus) {
              case AuthenticationStatus.unknown:
                LogHelper.d('Auth Bloc Listener unknown');
                break;
              case AuthenticationStatus.authenticated:
                Get.offAll(() => const HyphaBottomNavigation());
                break;
              case AuthenticationStatus.unauthenticated:
                Get.offAll(() => const OnboardingPage());
                break;
            }
          },
        ),
        BlocListener<DeeplinkBloc, DeeplinkState>(
          listenWhen: (previous, current) => previous.command != current.command,
          listener: (context, state) {
            state.command?.when(
                navigateToCreateAccount: () => Get.offAll(() => const OnboardingPageWithLink()),
                navigateToSignTransaction: (ScanQrCodeResultData data) {
                  _showSignTransactionBottomSheet(data);
                });
            context.read<DeeplinkBloc>().add(const DeeplinkEvent.clearPageCommand());
          },
        ),

        BlocListener<PushNotificationsBloc, PushNotificationsState>(
          listenWhen: (previous, current) => previous.command != current.command,
          listener: (_, state) {
            state.command?.when(navigateToSignTransaction: (ScanQrCodeResultData data) {
              _showSignTransactionBottomSheet(data);
            });

            context.read<PushNotificationsBloc>().add(const PushNotificationsEvent.clearPageCommand());
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
              unawaited(Get.bottomSheet(
                FractionallySizedBox(
                  heightFactor: 0.95,
                  child: HyphaConfirmationPage(
                    title: title,
                    subtitle: subtitle,
                    image: image,
                    rationale: rationale,
                    primaryButtonCallback: () {
                      Get.off(state.hasWords ? SaveWordsPage(words) : SaveKeyPage(privateKey));
                      context.read<SettingsBloc>().add(const SettingsEvent.onSecureAccountTapped());
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
              ));

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
            navigatorObservers: <NavigatorObserver>[observer],
            home: const OnboardingPage(),
          );
        },
      ),
    );
  }

  void _showSignTransactionBottomSheet(ScanQrCodeResultData data) {
    Get.bottomSheet(
      FractionallySizedBox(
        heightFactor: UIConstants.bottomSheetHeightFraction,
        child: SignTransactionPage(qrCodeData: data),
      ),
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
    );
  }
}
