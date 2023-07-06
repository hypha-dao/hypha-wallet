import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/core/network/models/transaction_model.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/progress_indicator/hypha_progress_indicator.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/token/token_details/interactor/token_details_bloc.dart';
import 'package:hypha_wallet/ui/wallet/components/recent_transactions_view.dart';
import 'package:hypha_wallet/ui/wallet/data/wallet_token_data.dart';

class TokenDetailsView extends StatelessWidget {
  final WalletTokenData data;

  const TokenDetailsView(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      gradient: HyphaColors.gradientBlu,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(data.name, style: context.hyphaTextTheme.smallTitles.copyWith(color: Colors.white)),
        ),
        body: Column(
          children: [
            HyphaAvatarImage(imageRadius: 40, name: data.name, imageFromUrl: data.image),
            const SizedBox(height: 16),
            Text(
              'Balance',
              style: context.hyphaTextTheme.ralBold.copyWith(
                color: context.isDarkMode ? HyphaColors.primaryBlu : HyphaColors.white,
              ),
            ),
            BlocBuilder<TokenDetailsBloc, TokenDetailsState>(
              builder: (context, state) {
                return Visibility(
                  visible: !state.loadingTokenBalance,
                  replacement: const Padding(
                    padding: EdgeInsets.only(top: 14, bottom: 16),
                    child: HyphaProgressIndicator(height: 24, width: 24, strokeWidth: 1, color: Colors.white),
                  ),
                  child: Text(
                    state.token.userOwnedAmount?.toString() ?? 'n/a',
                    style: context.hyphaTextTheme.popsExtraLargeAndLight.copyWith(color: HyphaColors.white),
                  ),
                );
              },
            ),
            const SizedBox(height: 24),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 24),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Expanded(
            //         child: HyphaAppButton(
            //           title: 'Receive',
            //           onPressed: () {},
            //           buttonType: ButtonType.secondary,
            //         ),
            //       ),
            //       const SizedBox(width: 22),
            //       Expanded(
            //         child: BlocBuilder<TokenDetailsBloc, TokenDetailsState>(
            //           builder: (context, state) {
            //             return HyphaAppButton(
            //               title: 'Send',
            //               buttonType: ButtonType.primary,
            //               onPressed: () {
            //                 Get.to(
            //                   () => SearchUserPage(pageTitle: 'Send ${state.token.name}', tokenModel: state.token),
            //                 );
            //               },
            //             );
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 24),
            BlocBuilder<TokenDetailsBloc, TokenDetailsState>(
              buildWhen: (previous, current) =>
                  previous.loadingTransaction != current.loadingTransaction ||
                  previous.recentTransactions != current.recentTransactions,
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
    );
  }
}

class TransactionsForToken extends StatelessWidget {
  final List<TransactionModel> recentTransactions;

  const TransactionsForToken({super.key, required this.recentTransactions});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: recentTransactions.map((e) => ListTile(title: Text(e.account))).toList(),
    );
  }
}
