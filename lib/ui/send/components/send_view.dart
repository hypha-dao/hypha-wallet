import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/bottom_component/hypha_safe_bottom_navigation_bar.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
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
          title: BlocBuilder<SendBloc, SendState>(
            builder: (context, state) {
              return Text('Send ${state.tokenData.name}');
            },
          ),
        ),
        bottomNavigationBar: HyphaSafeBottomNavigationBar(
          child: HyphaAppButton(
            onPressed: () {},
            title: 'Send',
            buttonType: ButtonType.primary,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Text(
                '0',
                textAlign: TextAlign.center,
                style: context.hyphaTextTheme.popsExtraLargeAndLight,
              ),
              const _AvailableBalanceWidget(),
              const _ToUserRow(),
              const SizedBox(height: 20),
              const _MemoField(),
              const SizedBox(height: 20),
              const _PercentagesWidget(),
              const SizedBox(height: 20),
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
      children: List.generate(12, (index) {
        final text = switch (index + 1) {
          10 => '.',
          11 => '0',
          12 => '<-',
          _ => index.toString(),
        };
        return Padding(
          padding:  EdgeInsets.only(top: 8, bottom: 8, left: index % 3 == 0 ? 0: 8, right: index % 3 == 2 ? 0: 8),
          child: HyphaCard(
            borderRadius: BorderRadius.circular(14),
            child: Center(
              child: Text(
                text,
                style: context.hyphaTextTheme.mediumTitles,
              ),
            ),
          ),
        );
      }),
    );
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
          decoration('min', context),
          decoration('25%', context),
          decoration('50%', context),
          decoration('75%', context),
          decoration('max', context),
        ],
      ),
    );
  }

  Widget decoration(String text, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: HyphaColors.primaryBlu),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Text(text, style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.primaryBlu)),
    );
  }
}

class _MemoField extends StatelessWidget {
  const _MemoField();

  @override
  Widget build(BuildContext context) {
    return  HyphaCard(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('Memo (optional)', style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.midGrey)),
          ),
        ],
      ),
    );
  }
}

class _ToUserRow extends StatelessWidget {
  const _ToUserRow();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendBloc, SendState>(
      builder: (context, state) {
        return ListTile(
          leading: HyphaAvatarImage(
            imageRadius: 20,
            name: state.receiverUser.userName,
            imageFromUrl: state.receiverUser.userImage,
          ),
          title: Text(state.receiverUser.userName ?? state.receiverUser.accountName),
          subtitle: Text(state.receiverUser.accountName),
          trailing: HyphaCard(
            borderRadius: BorderRadius.circular(10),
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Text('To'),
            ),
          ),
        );
      },
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
