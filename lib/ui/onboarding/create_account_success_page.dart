import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/bottom_component/hypha_safe_bottom_navigation_bar.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:image_picker/image_picker.dart';

class CreateAccountSuccessPage extends StatelessWidget {
  final XFile? file;
  final String name;
  final String accountName;

  const CreateAccountSuccessPage({super.key, this.file, required this.name, required this.accountName});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<AuthenticationBloc>().add(
              const AuthenticationEvent.authenticationStatusChanged(AuthenticationStatus.authenticated),
            );
        return true;
      },
      child: HyphaPageBackground(
        withOpacity: false,
        child: Scaffold(
          backgroundColor: HyphaColors.transparent,
          bottomNavigationBar: HyphaSafeBottomNavigationBar(
            child: HyphaAppButton(
              onPressed: () {
                /// This is a hack: Fixes an issue where the user is already signed in and scans a sign up QR or link
                /// This hack forces a state refresh. 
                context.read<AuthenticationBloc>().add(
                      const AuthenticationEvent.authenticationStatusChanged(AuthenticationStatus.unknown),
                    );
                context.read<AuthenticationBloc>().add(
                      const AuthenticationEvent.authenticationStatusChanged(AuthenticationStatus.authenticated),
                    );
              },
              title: 'Next',
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                Text('Well done!', style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.lightBlue)),
                Text('Account Ready', style: context.hyphaTextTheme.smallTitles),
                const SizedBox(height: 140),
                HyphaAvatarImage(imageFromFile: file?.path, imageRadius: 44, name: name),
                const SizedBox(height: 14),
                Text(name, style: context.hyphaTextTheme.mediumTitles),
                const SizedBox(height: 4),
                Text('@$accountName', style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.lightBlue)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
