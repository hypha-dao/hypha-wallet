import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/icons/hypha_icons.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/bottom_navigation/interactor/bottom_navigation_bloc.dart';
import 'package:hypha_wallet/ui/history/transactions/transactions_page.dart';
import 'package:hypha_wallet/ui/home_page/home_page.dart';
import 'package:hypha_wallet/ui/profile/profile_page.dart';
import 'package:hypha_wallet/ui/proposals/proposals_page.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';
import 'package:hypha_wallet/ui/settings/settings_page.dart';
import 'package:hypha_wallet/ui/wallet/wallet_page.dart';

const double _bottomBarRadius = 22;

class BottomNavigationView extends StatelessWidget {
  const BottomNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, BottomNavigationState state) {
        return Scaffold(
            extendBody: true,
            bottomNavigationBar: DecoratedBox(
              decoration: BoxDecoration(
                color: context.isDarkTheme
                    ? HyphaColors.lightBlack
                    : HyphaColors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(_bottomBarRadius),
                  topLeft: Radius.circular(_bottomBarRadius),
                ),
                boxShadow: context.isDarkTheme
                    ? HyphaColors.darkModeBottomMenuShadow
                    : HyphaColors.lightModeBottomMenuShadow,
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(_bottomBarRadius),
                  topRight: Radius.circular(_bottomBarRadius),
                ),
                clipBehavior: Clip.antiAlias,
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 8, left: 30, right: 30, top: 12),
                  child: BottomNavigationBar(
                    elevation: 0,
                    backgroundColor: context.isDarkTheme
                        ? HyphaColors.lightBlack
                        : HyphaColors.white,
                    currentIndex: state.indexOfSelected,
                    selectedFontSize: 12,
                    unselectedFontSize: 12,
                    onTap: (int index) {
                      BlocProvider.of<BottomNavigationBloc>(context).add(
                        BottomNavigationEvent.onPageSelected(
                            state.allPages[index]),
                      );
                      if (state.allPages[index] ==
                          BottomNavigationPage.settings) {
                        BlocProvider.of<SettingsBloc>(context)
                            .add(const SettingsEvent.onShowSettings());
                      }
                    },
                    items: _mapBottomNavigationItems(state.allPages),
                  ),
                ),
              ),
            ),
            body: IndexedStack(
              index: state.indexOfSelected,
              children: state.allPages
                  .map((e) => switch (e) {
                        BottomNavigationPage.home => const HomePage(),
                        BottomNavigationPage.wallet => const WalletPage(),
                        BottomNavigationPage.proposals => const ProposalsPage(),
                        BottomNavigationPage.transactions =>
                          const TransactionsPage(),
                        BottomNavigationPage.settings => const SettingsPage(),
                      })
                  .toList(),
            ));
      },
    );
  }

  List<BottomNavigationBarItem> _mapBottomNavigationItems(
      List<BottomNavigationPage> allPages) {
    return allPages
        .map((BottomNavigationPage e) => switch (e) {
              BottomNavigationPage.home => const BottomNavigationBarItem(
                  icon: Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Icon(HyphaIcons.home_b, size: 20)),
                  label: 'Scan-QR',
                ),
              BottomNavigationPage.wallet => const BottomNavigationBarItem(
                  icon: Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Icon(HyphaIcons.wallet_b, size: 20)),
                  label: 'Wallet',
                ),
              BottomNavigationPage.proposals => const BottomNavigationBarItem(
                  icon: Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Icon(HyphaIcons.proposals_b, size: 22,opticalSize: 15,)),
                  label: 'Proposals',
                ),
              BottomNavigationPage.transactions =>
                const BottomNavigationBarItem(
                  icon: Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Icon(HyphaIcons.history_b, size: 20)),
                  label: 'History',
                ),
              BottomNavigationPage.settings => const BottomNavigationBarItem(
                  icon: Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Icon(HyphaIcons.settings_b, size: 20)),
                  label: 'Settings',
                ),
            })
        .toList();
  }
}

enum BottomNavigationPage {
  home,
  wallet,
  proposals,
  transactions,
  settings;
}
