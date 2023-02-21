import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/icons/hypha_icons.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/bottom_navigation/interactor/bottom_navigation_bloc.dart';
import 'package:hypha_wallet/ui/history/transactions/transactions_page.dart';
import 'package:hypha_wallet/ui/home_page/home_page.dart';
import 'package:hypha_wallet/ui/profile/profile_page.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';
import 'package:hypha_wallet/ui/settings/settings_page.dart';

const double _bottomBarRadius = 22;

class BottomNavigationView extends StatelessWidget {
  const BottomNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        return Scaffold(
            extendBody: true,
            bottomNavigationBar: DecoratedBox(
              decoration: BoxDecoration(
                color: context.isDarkTheme ? HyphaColors.lightBlack : HyphaColors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(_bottomBarRadius),
                  topLeft: Radius.circular(_bottomBarRadius),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(_bottomBarRadius),
                  topRight: Radius.circular(_bottomBarRadius),
                ),
                clipBehavior: Clip.antiAlias,
                child: BottomNavigationBar(
                  backgroundColor: context.isDarkTheme ? HyphaColors.lightBlack : HyphaColors.white,
                  currentIndex: state.selectedPage,
                  onTap: (int index) {
                    BlocProvider.of<BottomNavigationBloc>(context).add(BottomNavigationEvent.onPageSelected(index));
                    if (index == 3) {
                      BlocProvider.of<SettingsBloc>(context).add(const SettingsEvent.onShowSettings());
                    }
                  },
                  items: [
                    const BottomNavigationBarItem(icon: Icon(HyphaIcons.home_b), label: 'Home'),
                    const BottomNavigationBarItem(icon: Icon(HyphaIcons.history_b), label: 'History'),
                    const BottomNavigationBarItem(icon: Icon(HyphaIcons.profile_b), label: 'Profile'),
                    const BottomNavigationBarItem(icon: Icon(HyphaIcons.settings_b), label: 'Settings'),
                  ],
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
