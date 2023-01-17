import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/ui/bottom_navigation/components/bottom_navigation_view.dart';
import 'package:hypha_wallet/ui/bottom_navigation/interactor/bottom_navigation_bloc.dart';

class HyphaBottomNavigation extends StatelessWidget {
  const HyphaBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<BottomNavigationBloc>()..add(const BottomNavigationEvent.initial()),
      child: BlocListener<BottomNavigationBloc, BottomNavigationState>(
        listenWhen: (previous, current) => previous.command != current.command,
        listener: (context, state) {
          state.command?.when(navigateTo: () {});

          context.read<BottomNavigationBloc>().add(const BottomNavigationEvent.clearPageCommand());
        },
        child: const BottomNavigationView(),
      ),
    );
  }
}
