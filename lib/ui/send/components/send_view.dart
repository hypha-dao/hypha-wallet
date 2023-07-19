import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/bottom_component/hypha_safe_bottom_navigation_bar.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/send/components/send_memo_field.dart';
import 'package:hypha_wallet/ui/send/components/send_review_bottom_sheet.dart';
import 'package:hypha_wallet/ui/send/components/send_to_user_row.dart';
import 'package:hypha_wallet/ui/send/data/amount_percentage.dart';
import 'package:hypha_wallet/ui/send/data/keypad_key.dart';
import 'package:hypha_wallet/ui/send/interactor/send_bloc.dart';

class SendView extends StatelessWidget {
  const SendView({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Send ${context.read<SendBloc>().state.tokenData.name}'),
        ),
        bottomNavigationBar: BlocBuilder<SendBloc, SendState>(
          buildWhen: (p, c) => p.userEnteredAmount != c.userEnteredAmount,
          builder: (context, state) {
            return HyphaSafeBottomNavigationBar(
              child: HyphaAppButton(
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    clipBehavior: Clip.hardEdge,
                    context: context,
                    builder: (childContext) => BlocProvider.value(
                      value: BlocProvider.of<SendBloc>(context),
                      child: const SendReviewBottomSheet(),
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                  );
                },
                title: 'Send',
                buttonType: ButtonType.primary,
                isActive: state.isSubmitEnabled,
              ),
            );
          },
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              BlocBuilder<SendBloc, SendState>(
                buildWhen: (p, c) => p.userEnteredAmount != c.userEnteredAmount,
                builder: (context, state) {
                  return Text(
                    state.userEnteredAmount ?? '0',
                    textAlign: TextAlign.center,
                    style: context.hyphaTextTheme.popsExtraLargeAndLight,
                  );
                },
              ),
              const _AvailableBalanceWidget(),
              const SendToUserRow(imageRadius: 20),
              const SizedBox(height: 24),
              const SendMemoField(),
              const SizedBox(height: 24),
              const _PercentagesWidget(),
              const SizedBox(height: 24),
              const _NumberKeyboardGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

class _NumberKeyboardGrid extends StatelessWidget {
  const _NumberKeyboardGrid();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        childAspectRatio: 1.8,
        physics: const NeverScrollableScrollPhysics(),
        children: KeypadKey.values.mapIndexed((index, element) {
          final text = switch (element) {
            KeypadKey.dot => '.',
            KeypadKey.delete => '<-',
            _ => element.value.toString(),
          };
          return GestureDetector(
            onTap: () {
              context.read<SendBloc>().add(SendEvent.onKeypadTapped(element));
            },
            child: Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: index % 3 == 0 ? 0 : 8, right: index % 3 == 2 ? 0 : 8),
              child: HyphaCard(
                borderRadius: BorderRadius.circular(14),
                child: Center(
                  child: Text(
                    text,
                    style: context.hyphaTextTheme.mediumTitles,
                  ),
                ),
              ),
            ),
          );
        }).toList());
  }
}

class _PercentagesWidget extends StatelessWidget {
  const _PercentagesWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          percentageButton('10%', context, AmountPercentage.ten),
          percentageButton('25%', context, AmountPercentage.twentyFive),
          percentageButton('50%', context, AmountPercentage.fifty),
          percentageButton('75%', context, AmountPercentage.seventyFive),
          percentageButton('max', context, AmountPercentage.max),
        ],
      ),
    );
  }

  Widget percentageButton(String text, BuildContext context, AmountPercentage percentage) {
    return GestureDetector(
      onTap: () {
        context.read<SendBloc>().add(SendEvent.onPercentageTapped(percentage));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(color: HyphaColors.primaryBlu),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Text(text, style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.primaryBlu)),
      ),
    );
  }
}

class _AvailableBalanceWidget extends StatelessWidget {
  const _AvailableBalanceWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendBloc, SendState>(
      builder: (context, state) {
        return Column(
          children: [
            Text(
              'Available Balance',
              style: context.hyphaTextTheme.ralMediumLabel.copyWith(color: HyphaColors.primaryBlu),
            ),
            Text(state.tokenData.ownedAmountAndSymbol, style: context.hyphaTextTheme.regular),
          ],
        );
      },
    );
  }
}
