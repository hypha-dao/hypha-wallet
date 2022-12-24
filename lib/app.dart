import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/design/hypha_theme.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:hypha_wallet/ui/blocs/error_handler/error_handler_bloc.dart';
import 'package:hypha_wallet/ui/bottom_navigation/hypha_bottom_navigation.dart';
import 'package:hypha_wallet/ui/onboarding/intro_page.dart';

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
        BlocProvider<DeeplinkBloc>(create: (_) => GetIt.I.get<DeeplinkBloc>()),
        BlocProvider<ErrorHandlerBloc>(create: (_) => GetIt.I.get<ErrorHandlerBloc>()),
      ],
      child: const HyphaAppView(),
    );
  }
}

class HyphaAppView extends StatelessWidget {
  const HyphaAppView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthenticationBloc, AuthenticationState>(
          listenWhen: (previous, current) {
            return previous.authenticationStatus != current.authenticationStatus;
          },
          listener: (context, state) {
            state.when(authenticated: (status, userProfile) {
              if (status == AuthenticationStatus.authenticated) {
                Get.offAll(() => const HyphaBottomNavigation());
              }
            }, unAuthenticated: (status) {
              Get.offAll(() => const IntroPage());
            }, unknown: (AuthenticationStatus status) {
              LogHelper.d('Auth Bloc Listener $status');
            });
          },
        ),
        BlocListener<DeeplinkBloc, DeeplinkState>(
          listenWhen: (previous, current) => previous.command != current.command,
          listener: (context, state) {
            state.command?.when(navigateToCreateAccount: () => Get.offAll(() => const IntroPage()));

            context.read<DeeplinkBloc>().add(DeeplinkEvent.clearPageCommand());
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
                  cancel: Text('Login'),
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
                Get.showSnackbar(GetSnackBar(message: message, duration: Duration(seconds: 3)));
              },
            );

            context.read<ErrorHandlerBloc>().add(const ErrorHandlerEvent.onClearPageCommand());
          },
        ),
      ],
      child: GetMaterialApp(
        title: 'Hypha Wallet',
        darkTheme: HyphaTheme.darkTheme,
        theme: HyphaTheme.lightTheme,
        themeMode: ThemeMode.system,
        home: const SizedBox.shrink(),
      ),
    );
  }
}
