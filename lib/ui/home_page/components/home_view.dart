import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/ui/home_page/components/scanner_widget.dart';
import 'package:hypha_wallet/ui/home_page/interactor/home_bloc.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text('Hypha Wallet')),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                SizedBox(height: 24),
                Icon(Icons.snowboarding, size: 80),
                SizedBox(height: 24),
                ScannerWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}
