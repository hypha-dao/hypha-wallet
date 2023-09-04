import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as Get;
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/firebase/firebase_analytics_service.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/design/themes/hypha_theme.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:hypha_wallet/ui/blocs/error_handler/error_handler_bloc.dart';
import 'package:hypha_wallet/ui/blocs/push_notifications/push_notifications_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/onboarding_page_with_link.dart';
import 'package:hypha_wallet/ui/settings/hypha_confirmation_page.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';
import 'package:hypha_wallet/ui/settings/save_key_page.dart';
import 'package:hypha_wallet/ui/settings/save_words_page.dart';
import 'package:hypha_wallet/ui/shared/ui_constants.dart';
import 'package:hypha_wallet/ui/sign_transaction/sign_transaction_page.dart';
import 'package:hypha_wallet/ui/splash/splash_page.dart';

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

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthenticationBloc, AuthenticationState>(
          listenWhen: (previous, current) {
            return previous.authStatus != current.authStatus;
          },
          listener: (context, state) {
            LogHelper.d('Auth Bloc Listener FIRED');
            /// If we are handling a deeplink. Do not listen to navigation.
            if(context.read<DeeplinkBloc>().state.inviteLinkData != null) {
              LogHelper.d('There is Invite Link data. Ignore this command.');
              return;
            }
            switch (state.authStatus) {
              case Unknown _:
                LogHelper.d('Auth Bloc Listener unknown');
                break;
              case Authenticated _:
                Get.Get.offAll(
                  () => const SplashPage(),
                  duration: const Duration(milliseconds: 500),
                  transition: Get.Transition.fadeIn,
                );
                break;
              case UnAuthenticated _:
                Get.Get.offAll(
                  () => const SplashPage(),
                  duration: const Duration(milliseconds: 500),
                  transition: Get.Transition.fadeIn,
                );
                break;
            }
          },
        ),
        BlocListener<DeeplinkBloc, DeeplinkState>(
          listenWhen: (previous, current) => previous.command != current.command,
          listener: (context, state) {
            state.command?.when(
                navigateToCreateAccount: () => Get.Get.offAll(() => const OnboardingPageWithLink()),
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
              unawaited(Get.Get.bottomSheet(
                FractionallySizedBox(
                  heightFactor: 0.95,
                  child: HyphaConfirmationPage(
                    title: title,
                    subtitle: subtitle,
                    image: image,
                    rationale: rationale,
                    primaryButtonCallback: () {
                      Get.Get.off(state.hasWords ? SaveWordsPage(words) : SaveKeyPage(privateKey));
                      context.read<SettingsBloc>().add(const SettingsEvent.onSecureAccountTapped());
                    },
                    primaryButtonText: mainButtonText,
                    secondaryButtonText: 'Close',
                    secondaryButtonCallback: () {
                      Get.Get.back();
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
                Get.Get.defaultDialog(
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
                Get.Get.defaultDialog(
                  title: hyphaError.message,
                  cancel: hyphaError.actionText?.let((it) => Text(it)),
                  onCancel: hyphaError.action?.call(),
                );
              },
              showErrorMessage: (message) {
                Get.Get.showSnackbar(Get.GetSnackBar(message: message, duration: const Duration(seconds: 3)));
              },
            );

            context.read<ErrorHandlerBloc>().add(const ErrorHandlerEvent.onClearPageCommand());
          },
        ),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        buildWhen: (previous, current) => previous.themeMode != current.themeMode,
        builder: (context, state) {
          return Get.GetMaterialApp(
            title: 'Hypha Wallet',
            darkTheme: HyphaTheme.darkTheme,
            theme: HyphaTheme.lightTheme,
            themeMode: state.themeMode,
            navigatorObservers: <NavigatorObserver>[GetIt.I.get<FirebaseAnalyticsService>().firebaseObserver],
            home: const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  void _showSignTransactionBottomSheet(ScanQrCodeResultData data) {
    Get.Get.bottomSheet(
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
