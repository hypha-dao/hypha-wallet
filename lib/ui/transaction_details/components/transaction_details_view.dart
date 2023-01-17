import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hypha_wallet/design/cards/hypha_transaction_action_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/slide_to/slide_to_confirm.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/transaction_details/interactor/transaction_details_bloc.dart';

class TransactionDetailsView extends StatelessWidget {
  const TransactionDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionDetailsBloc, TransactionDetailsState>(
      builder: (context, state) {
        return DecoratedBox(
          decoration: BoxDecoration(
            gradient: context.isDarkTheme ? HyphaColors.gradientBlack : HyphaColors.gradientWhite,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Column(
            children: [
              const _Header('Signing request', 'From hypha DAO on Telos'),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      ...state.transactionDetailsData.cards
                          .map((e) => HyphaTransactionActionCard(transactionDetailsCardData: e))
                          .toList(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'This transaction expires in ',
                              style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
                            ),
                            Text(
                              state.transactionDetailsData.expirationTime.toString(),
                              style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.midGrey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const _Slider(),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}

class _Slider extends StatelessWidget {
  const _Slider();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Builder(
        builder: (context) {
          final GlobalKey<SlideActionState> _key = GlobalKey();
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SlideAction(
              outerColor: context.isDarkTheme ? HyphaColors.lightBlack : HyphaColors.white,
              key: _key,
              onSubmit: () {
                context.read<TransactionDetailsBloc>().add(const TransactionDetailsEvent.onUserSlideCompleted());
              },
              onCancel: () {
                context.read<TransactionDetailsBloc>().add(const TransactionDetailsEvent.onUserSlideCanceled());
              },
              alignment: Alignment.center,
              submittedIcon: const CircularProgressIndicator(),
              child: Text('Slide to Sign', style: context.hyphaTextTheme.ralMediumSmallNote),
            ),
          );
        },
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final String title;
  final String subtitle;

  const _Header(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      color: context.isDarkTheme ? HyphaColors.lightBlack : HyphaColors.white,
      margin: EdgeInsets.zero,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(26),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: context.hyphaTextTheme.mediumTitles),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.primaryBlu),
                ),
              ],
            ),
            SvgPicture.asset('assets/images/logos/hypha_logo.svg', height: 44, width: 44)
          ],
        ),
      ),
    );
  }
}
