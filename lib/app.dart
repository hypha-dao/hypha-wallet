import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/repository/auth_repository.dart';
import 'package:hypha_wallet/design/hypha_theme.dart';
import 'package:hypha_wallet/ui/authentication/authentication_page.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/home_page/authentication_page.dart';

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
                Get.to(const HomePage());
              }
            }, unAuthenticated: (status) {
              Get.offAll(const AuthenticationPage());
            }, unknown: (AuthenticationStatus status) {
              LogHelper.d('Auth Bloc Listener $status');
            });
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
