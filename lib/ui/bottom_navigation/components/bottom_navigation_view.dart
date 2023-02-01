import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/ui/bottom_navigation/interactor/bottom_navigation_bloc.dart';
import 'package:hypha_wallet/ui/history/transactions/transactions_page.dart';
import 'package:hypha_wallet/ui/home_page/home_page.dart';
import 'package:hypha_wallet/ui/profile/profile_page.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';
import 'package:hypha_wallet/ui/settings/settings_page.dart';

const iconSize = 24.0;

class BottomNavigationView extends StatelessWidget {
  const BottomNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.selectedPage,
              onTap: (int index) {
                BlocProvider.of<BottomNavigationBloc>(context).add(BottomNavigationEvent.onPageSelected(index));
                if (index == 3) {
                  BlocProvider.of<SettingsBloc>(context).add(const SettingsEvent.onShowSettings());
                }
              },
              items: [
                const BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner, size: iconSize), label: 'Scan QR'),
                const BottomNavigationBarItem(icon: Icon(Icons.history, size: iconSize), label: 'History'),
                const BottomNavigationBarItem(icon: Icon(Icons.person, size: iconSize), label: 'Profile'),
                BottomNavigationBarItem(
                  icon: BlocBuilder<SettingsBloc, SettingsState>(
                    buildWhen: (previous, current) =>
                        previous.showSecurityNotification != current.showSecurityNotification,
                    builder: (context, state) {
                      return Stack(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 6, left: 6),
                            child: Icon(Icons.settings, size: iconSize),
                          ),
                          if (state.showSecurityNotification)
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                decoration: const BoxDecoration(color: HyphaColors.error, shape: BoxShape.circle),
                                constraints: const BoxConstraints(minWidth: 14, minHeight: 10),
                              ),
                            )
                        ],
                      );
                    },
                  ),
                  label: 'Settings',
                ),
                // BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
              ],
            ),
            body: IndexedStack(
              index: state.selectedPage,
              children: [
                const HomePage(),
                const TransactionsPage(),
                const ProfilePage(),
                const SettingsPage(),
              ],
            ));
      },
    );
  }
}
