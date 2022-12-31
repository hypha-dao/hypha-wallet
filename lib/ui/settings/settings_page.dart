import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as GetX;
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/settings/account_security_page.dart';
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
              onTap: () {
                context.read<SettingsBloc>().add(SettingsEvent.onSecureAccountTapped());
                GetX.Get.to(() => AccountSecurityPage(), transition: GetX.Transition.rightToLeft);
              },
              title: Text('Secure your account'),
              trailing: Icon(Icons.navigate_next),
              minLeadingWidth: 0,
              leading: state.showSecurityNotification
                  ? Container(
                      height: double.infinity,
                      width: 10,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: HyphaColors.red),
                    )
                  : SizedBox(height: 10, width: 10),
            ),
            ListTile(
              leading: SizedBox(height: 10, width: 10),
              minLeadingWidth: 0,
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
            ),
            ListTile(
              leading: SizedBox(height: 10, width: 10),
              minLeadingWidth: 0,
              onTap: () {
                context.read<AuthenticationBloc>().add(AuthenticationEvent.authenticationLogoutRequested());
              },
              title: Text('Logout'),
            )
          ],
        ));
      },
    );
  }
}
