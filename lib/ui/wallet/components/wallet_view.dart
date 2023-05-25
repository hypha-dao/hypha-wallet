import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';
import 'package:hypha_wallet/ui/shared/hypha_error_view.dart';
import 'package:hypha_wallet/ui/shared/listview_with_all_separators.dart';
import 'package:hypha_wallet/ui/wallet/components/wallet_token_widget.dart';
import 'package:hypha_wallet/ui/wallet/interactor/wallet_bloc.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withOpacity: false,
      child: BlocBuilder<WalletBloc, WalletState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<WalletBloc>().add(const WalletEvent.onRefresh());
            },
            child: HyphaBodyWidget(
              pageState: state.pageState,
              failure: (_) {
                return HyphaErrorWidget(onRefreshPressed: () {
                  context.read<WalletBloc>().add(const WalletEvent.onRefresh());
                });
              },
              success: (value) => Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  title: Row(
                    children: [
                      BlocBuilder<AuthenticationBloc, AuthenticationState>(
                        builder: (context, state) {
                          return HyphaAvatarImage(
                            imageRadius: 17,
                            imageFromUrl: state.userProfileData?.userImage,
                            name: state.userProfileData?.userName,
                          );
                        },
                      ),
                      const SizedBox(width: 12),
                      Text('Wallet', style: context.hyphaTextTheme.bigTitles),
                    ],
                  ),
                  titleSpacing: 28,
                ),
                backgroundColor: HyphaColors.transparent,
                body: Column(
                  children: [
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 150,
                      child: ListViewWithAllSeparators(
                        scrollDirection: Axis.horizontal,
                        items: state.tokens,
                        physics: const ClampingScrollPhysics(),
                        cacheExtent: MediaQuery.of(context).size.height * 2,
                        separatorBuilder: (_, int index) {
                          if (state.tokens.isEmpty) return const SizedBox.shrink();
                          if (index == 0) return const SizedBox(width: 28);
                          return const SizedBox(width: 16);
                        },
                        itemBuilder: (_, item, __) {
                          return WalletTokenWidget(token: item);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
