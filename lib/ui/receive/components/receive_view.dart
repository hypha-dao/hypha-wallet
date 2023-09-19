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
import 'package:hypha_wallet/ui/receive/interactor/receive_bloc.dart';
import 'package:hypha_wallet/ui/send/components/send_memo_field.dart';
import 'package:hypha_wallet/ui/send/components/send_view.dart';
import 'package:hypha_wallet/ui/send/data/keypad_key.dart';


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
                /// Navigate to receive screen
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
              const SizedBox(height: 24),
              const SendMemoField(),
              const SizedBox(height: 24),
              const NumberKeyboardGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

class _NumberKeyboardGrid extends StatelessWidget {
  final GestureTapCallback onTap;
  const _NumberKeyboardGrid(this.onTap);

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
            onTap: onTap,
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

