import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/icons/hypha_icons.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/bottom_navigation/interactor/bottom_navigation_bloc.dart';
import 'package:hypha_wallet/ui/history/transactions/transactions_page.dart';
import 'package:hypha_wallet/ui/home_page/home_page.dart';
import 'package:hypha_wallet/ui/profile/profile_page.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';
import 'package:hypha_wallet/ui/settings/settings_page.dart';

class BottomNavigationView extends StatelessWidget {
  const BottomNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        return Scaffold(
            bottomNavigationBar: DecoratedBox(
              decoration: BoxDecoration(
                color: context.isDarkTheme ? HyphaColors.lightBlack : HyphaColors.white,
                // borderRadius: const BorderRadius.all(Radius.circular(26)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  )
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                  child: GNav(
                    rippleColor: context.isDarkTheme ? HyphaColors.midGrey : Colors.grey[300]!,
                    gap: 8,
                    activeColor: HyphaColors.white,
                    iconSize: 18,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    duration: const Duration(milliseconds: 400),
                    tabBackgroundGradient: HyphaColors.gradientBlu,
                    color: context.isDarkTheme
                        ? HyphaColors.offWhite.withOpacity(0.20)
                        : HyphaColors.black.withOpacity(0.33),
                    tabs: [
                      const GButton(icon: HyphaIcons.home_b, text: 'Home'),
                      const GButton(icon: HyphaIcons.history_b, text: 'History'),
                      const GButton(icon: HyphaIcons.profile_b, text: 'Profile'),
                      const GButton(icon: HyphaIcons.settings_b, text: 'Settings'),
                    ],
                    selectedIndex: state.selectedPage,
                    onTabChange: (index) {
                      BlocProvider.of<BottomNavigationBloc>(context).add(BottomNavigationEvent.onPageSelected(index));
                      if (index == 3) {
                        BlocProvider.of<SettingsBloc>(context).add(const SettingsEvent.onShowSettings());
                      }
                    },
                  ),
                ),
              ),
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
