import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/bottom_navigation/interactor/bottom_navigation_bloc.dart';
import 'package:hypha_wallet/ui/home_page/components/scanner_widget.dart';
import 'package:hypha_wallet/ui/home_page/interactor/home_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.pageState != current.pageState || previous.isLoading != current.isLoading,
      builder: (context, state) {
        return HyphaPageBackground(
          withOpacity: false,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.only(right: 16, top: 16),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                      builder: (context, state) {
                        return HyphaAvatarImage(
                          imageRadius: 24,
                          name: state.userProfileData?.userName ?? '?',
                          imageFromUrl: state.userProfileData?.userImage,
                          onTap: () {
                            context.read<BottomNavigationBloc>().add(const BottomNavigationEvent.onPageSelected(2));
                          },
                        );
                      },
                    ),
                  ),
                ),
                SvgPicture.asset(context.hyphaAssetTheme.hyphaLogoComposite, width: 80, height: 110),
                const SizedBox(height: 60),
                ScannerWidget(isLoading: state.isLoading),
              ],
            ),
          ),
        );
      },
    );
  }
}
