import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/home_page/components/home_view.dart';
import 'package:hypha_wallet/ui/home_page/interactor/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<HomeBloc>()..add(const HomeEvent.initial()),
      child: BlocListener<HomeBloc, HomeState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(navigateTo: () {});

          context.read<HomeBloc>().add(HomeEvent.clearPageCommand());
        },
        child: HomeView(),
      ),
    );
  }
}
