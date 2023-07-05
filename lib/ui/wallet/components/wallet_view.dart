import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as GetX;
import 'package:get/get.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/shared/hypha_body_widget.dart';
import 'package:hypha_wallet/ui/shared/hypha_error_view.dart';
import 'package:hypha_wallet/ui/shared/listview_with_all_separators.dart';
import 'package:hypha_wallet/ui/token/token_details/token_details_page.dart';
import 'package:hypha_wallet/ui/token/token_settings/token_settings_page.dart';
import 'package:hypha_wallet/ui/wallet/components/recent_transactions_view.dart';
import 'package:hypha_wallet/ui/wallet/components/wallet_add_token_widget.dart';
import 'package:hypha_wallet/ui/wallet/components/wallet_token_widget.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';
import 'package:hypha_wallet/ui/wallet/interactor/wallet_bloc.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      backgroundTexture: 'assets/images/graphics/wallet_background.png',
      withOpacity: false,
      child: BlocBuilder<WalletBloc, WalletState>(
        builder: (context, state) {
          final List<WalletTokenData> tokens = state.tokens +
              [
                const WalletTokenData(
                  selected: true,
                  name: 'ADD TOKEN',
                  image: 'ADD TOKEN',
                  contract: 'ADD TOKEN',
                  id: 'ADD TOKEN',
                  symbol: 'ADD TOKEN',
                  precision: 2,
                )
              ];
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
                            imageRadius: 19,
                            imageFromUrl: state.userProfileData?.userImage,
                            name: state.userProfileData?.userName,
                          );
                        },
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Wallet',
                        style: context.hyphaTextTheme.bigTitles.copyWith(color: HyphaColors.white),
                      ),
                    ],
                  ),
                  titleSpacing: 28,
                ),
                backgroundColor: HyphaColors.transparent,
                body: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(height: 20),
                    _UserTokensList(tokens: tokens),
                    const SizedBox(height: 24),
                    BlocBuilder<WalletBloc, WalletState>(
                      builder: (context, state) {
                        return RecentTransactionsView(
                          loadingTransaction: state.loadingTransaction,
                          recentTransactions: state.recentTransactions,
                        );
                      },
                    ),
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

class _UserTokensList extends StatelessWidget {
  const _UserTokensList({required this.tokens});

  final List<WalletTokenData> tokens;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 151,
      child: ListViewWithAllSeparators(
        scrollDirection: Axis.horizontal,
        items: tokens,
        physics: const ClampingScrollPhysics(),
        cacheExtent: MediaQuery.of(context).size.height * 2,
        separatorBuilder: (_, int index) {
          if (tokens.isEmpty) return const SizedBox.shrink();
          if (index == 0) return const SizedBox(width: 28);
          return const SizedBox(width: 16);
        },
        itemBuilder: (_, WalletTokenData item, __) {
          return item.name == 'ADD TOKEN'
              ? WalletAddTokenWidget(
                  token: item,
                  onTap: () {
                    Get.to(() => const TokensSettingsPage());
                  })
              : WalletTokenWidget(
                  token: item,
                  onTap: () {
                    Get.to(() => TokensDetailsPage(data: item));
                  });
        },
      ),
    );
  }
}
