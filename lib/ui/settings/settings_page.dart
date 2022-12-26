import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as GetX;
import 'package:hypha_wallet/ui/settings/account_secutiry_page.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return Scaffold(
            body: Column(
          children: [
            ListTile(
              onTap: () => GetX.Get.to(() => AccountSecurityPage(), transition: GetX.Transition.rightToLeft),
              title: Text('Secure your account'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              onTap: () {
                context.read<SettingsBloc>().add(SettingsEvent.onThemeChanged());
              },
              title: Text('Dark Theme'),
              trailing: Switch(
                value: state.themeMode == ThemeMode.dark,
                onChanged: (bool value) {
                  context.read<SettingsBloc>().add(SettingsEvent.onThemeChanged());
                },
              ),
            )
          ],
        ));
      },
    );
  }
}
