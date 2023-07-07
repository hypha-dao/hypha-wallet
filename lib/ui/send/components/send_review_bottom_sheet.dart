import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/avatar_image/hypha_avatar_image.dart';
import 'package:hypha_wallet/design/background/hypha_half_background.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/button_type.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_card.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/send/components/send_to_user_row.dart';
import 'package:hypha_wallet/ui/send/interactor/send_bloc.dart';
import 'package:hypha_wallet/ui/shared/components/color_arrow_up.dart';

class SendReviewBottomSheet extends StatelessWidget {
  const SendReviewBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      withGradient: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              const HyphaHalfBackground(showTopBar: true, height: 120),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 24, right: 24, bottom: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BlocBuilder<SendBloc, SendState>(
                      builder: (context, state) {
                        return Stack(
                          children: [
                            HyphaAvatarImage(
                              imageRadius: 50,
                              imageFromUrl: state.tokenData.image,
                              name: state.tokenData.name,
                            ),
                            Positioned(bottom: 0, right: 0, child: ColorArrowUp()),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 12),
                    BlocBuilder<SendBloc, SendState>(
                      builder: (context, state) {
                        return Text(
                          state.formattedAmount,
                          style: context.hyphaTextTheme.popsExtraLargeAndLight,
                        );
                      },
                    ),
                    BlocBuilder<SendBloc, SendState>(
                      builder: (context, state) {
                        return Text(
                          state.tokenData.name,
                          style: context.hyphaTextTheme.ralMediumBody.copyWith(height: 0),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    const SendToUserRow(imageRadius: 30),
                    const SizedBox(height: 16),
                    BlocBuilder<SendBloc, SendState>(
                      builder: (context, state) {
                        return state.memo == null
                            ? const SizedBox.shrink()
                            : HyphaCard(
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          state.memo ?? 'Memo (optional)',
                                          style: context.hyphaTextTheme.regular
                                              .copyWith(color: state.memo == null ? HyphaColors.midGrey : null),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                      },
                    ),
                    const SizedBox(height: 16),
                    HyphaCard(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Always free and instant!',
                                style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.midGrey),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
                    HyphaAppButton(
                      title: 'Edit',
                      buttonType: ButtonType.secondary,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 16),
                    HyphaAppButton(
                      title: 'Send',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
