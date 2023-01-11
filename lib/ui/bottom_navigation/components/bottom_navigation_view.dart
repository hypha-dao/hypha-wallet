import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/ui/bottom_navigation/interactor/bottom_navigation_bloc.dart';
import 'package:hypha_wallet/ui/home_page/home_page.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';
import 'package:hypha_wallet/ui/settings/settings_page.dart';

class BottomNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.selectedPage,
              onTap: (int index) {
                BlocProvider.of<BottomNavigationBloc>(context).add(BottomNavigationEvent.onPageSelected(index));
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner, size: 34), label: 'Scan QR'),
                BottomNavigationBarItem(icon: Icon(Icons.wallet, size: 34), label: 'Wallet'),
                BottomNavigationBarItem(
                  icon: BlocBuilder<SettingsBloc, SettingsState>(
                    buildWhen: (previous, current) =>
                        previous.showSecurityNotification != current.showSecurityNotification,
                    builder: (context, state) {
                      return Stack(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 6, left: 6),
                            child: Icon(Icons.settings, size: 34),
                          ),
                          if (state.showSecurityNotification)
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                decoration: BoxDecoration(color: HyphaColors.error, shape: BoxShape.circle),
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
                HomePage(),
                SettingsPage(),
                SettingsPage(),
              ],
            ));
      },
    );
  }
}
