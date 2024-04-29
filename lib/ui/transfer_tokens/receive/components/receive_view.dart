import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/bottom_component/hypha_safe_bottom_navigation_bar.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/transfer_tokens/components/memo_field.dart';
import 'package:hypha_wallet/ui/transfer_tokens/components/number_keyboard_grid.dart';
import 'package:hypha_wallet/ui/transfer_tokens/receive/interactor/receive_bloc.dart';

class ReceiveView extends StatelessWidget {
  const ReceiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Receive ${context.read<ReceiveBloc>().state.tokenData.name}'),
        ),
        bottomNavigationBar: BlocBuilder<ReceiveBloc, ReceiveState>(
          buildWhen: (p, c) => p.userEnteredAmount != c.userEnteredAmount,
          builder: (context, state) {
            return HyphaSafeBottomNavigationBar(
              child: HyphaAppButton(
                onPressed: () {
                  context.read<ReceiveBloc>().add(const ReceiveEvent.onNextTapped());
                },
                title: 'Next',
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
              BlocBuilder<ReceiveBloc, ReceiveState>(
                buildWhen: (p, c) => p.userEnteredAmount != c.userEnteredAmount,
                builder: (context, state) {
                  return Text(
                    state.userEnteredAmount ?? '0',
                    textAlign: TextAlign.center,
                    style: context.hyphaTextTheme.popsExtraLargeAndLight,
                  );
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Amount to ', style: Theme.of(context).textTheme.bodyMedium),
                  Text(
                    'receive',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: HyphaColors.primaryBlu),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              BlocBuilder<ReceiveBloc, ReceiveState>(
                buildWhen: (c, p) => c.memo != p.memo,
                builder: (context, state) {
                  return MemoField(
                    onPressed: (value) {
                      context.read<ReceiveBloc>().add(ReceiveEvent.onMemoEntered(value));
                      Get.back();
                    },
                    memo: state.memo,
                  );
                },
              ),
              const SizedBox(height: 24),
              NumberKeyboardGrid(onKeyTapped: (element) {
                context.read<ReceiveBloc>().add(ReceiveEvent.onKeypadTapped(element));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
