import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/token/token_settings/components/token_settings_view.dart';
import 'package:hypha_wallet/ui/token/token_settings/interactor/token_settings_bloc.dart';

class TokensSettingsPage extends StatelessWidget {
  const TokensSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<TokensSettingsBloc>()..add(const TokensSettingsEvent.initial()),
      child: BlocListener<TokensSettingsBloc, TokensSettingsState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          context.read<TokensSettingsBloc>().add(const TokensSettingsEvent.clearPageCommand());
        },
        child: const TokensSettingsView(),
      ),
    );
  }
}
