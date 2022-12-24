import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/ui/bottom_navigation/interactor/bottom_navigation_bloc.dart';
import 'package:hypha_wallet/ui/home_page/home_page.dart';
import 'package:hypha_wallet/ui/settings/settings_page.dart';

class BottomNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(title: Text('Hypha Wallet')),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.selectedPage,
              onTap: (int index) {
                BlocProvider.of<BottomNavigationBloc>(context).add(BottomNavigationEvent.onPageSelected(index));
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
              ],
            ),
            body: IndexedStack(
              index: state.selectedPage,
              children: [
                HomePage(),
                SettingsPage(),
                SettingsPage(),
              ],
            ));
      },
    );
  }
}
